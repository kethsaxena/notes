- 👋 Hi, I’m @kethsaxena
- 👀 I’m interested in JAVA,C++,Bash & Python projects
- 🌱 I’m currently learning ... watchdog, log roation , distributed computing
- 💞️ I’m looking to collaborate on ...making python faster 
- 📫 How to reach me ...please don't 


# Interview Questions
## JAVA 
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

    `
    
        val data = "path to file"

        "select name,subject,sum(marks) from data group by name,subject"

        2) STEP 2 

        def Transposedata(dataframe,columns,pivotCol):
            columnValues = list(map(lamda x:x), column)

        TRANSPOSE 

        val pivotDF  = data.groupby("name").pivot("subject").sum("marks")
        pivotDF.show()
    `
    

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