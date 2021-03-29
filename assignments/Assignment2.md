# Assignment #2

This assignment involves running your robot program against 3 opponent robots - ``Suarez9``, ``Pique5`` and ``FireFly``.
Your robot will play 100 rounds against each of the 3 robots, a total of 300 rounds.  Your aggregated score will be ranked and determine your overall assignment grade.

## Instructions 

Download the assignment ``a2`` package folder [here](https://github.com/barcaxi/PSOL2021/blob/main/assignments/a2.zip?raw=true).

Copy this folder into your ``robocode/robots`` folder.  When you run Robocode you will see 3 new opponent robots, ``Suarez9``, ``Pique5`` and ``FireFly`` in the ``a2`` package.

Your Robot (Java file) MUST use the structure below that includes your name, student number and classname.

Your Robot filename MUST be your student **L** number (e.g. L00909693.java)

```java
package a2;
import robocode.*;

// program name  : L00909693.java
// name          : Joe Bloggs
// student number: L00909693
// classname     : Applied or BSc 


public class L00909693 extends Robot
{
	...
}

```


## Rules

1. Your robot, one of the 3 opponent robots and 1 ``SentryBot`` robot will compete in 100 rounds.

2. Each of the 3 robot battles will have 100 rounds, a total of 300.

3. The screen size for all battles will be 800 x 800. 

4. A *Sentry Border Size* is set to 300 (coloured red).

5. If the robots are in the *safe zone* (coloured blue) ``SentryBot`` bullets do not cause any damage.

6. All robot submissions must be uploaded to BlackBoard no later than **12 noon 26 April 2021**. No exceptions.

7. All robot submissions must use the package name ``a2``.  If any other name is used the submission will not be graded. No exceptions.

8. One robot is submitted per student. 

9.  Your Robot name/filename MUST be your student **l** number (e.g. L00909693.java)

10. Your robot must only extend the ``Robot`` class. The robot will only use the classes and methods available in the ``Robot`` class.   The robot is not allowed to extend the ``AdvancedRobot`` class or any other class.

11. The robot code should be contained in one Java file.  Robot code must compile. Robots that do not compile will not be graded. 


## Submission Instructions

All robot submissions must be uploaded to BlackBoard no later than **12 noon 26 April 2021**. 

Upload to BlackBoard a compressed copy of the ``a2`` folder containing:
1.  The .java file of your Robot
1.  The .class file of your Robot
1.  A text file with a brief description of your strategy
1.  A completed *Assignment Cover Sheet*



## Plagiarism & Cheating

If any of the code submitted by you is deemed copied from or by someone else it will be formally reported to the Head of School of Science and a Disciplinary Committee will be convened to deal with this issue. You do not want that to happen!!

Never copy code from someone else or another source. Never give your code to someone else. Keep your code safely in your own possession. Plagiarism and cheating are very serious academic offenses with serious consequences for your future academic studies and work opportunities. Under current guidelines all students involved in plagiarism or cheating must be reported to the Head of School where a Disciplinary Committee will deal with the issue.


## Grading

The aggregate score of your robot against all 3 opponent robots will be aggregated and ranked among student submissions.
Grades are awarded on the percentile rank.
All robot scores will be ranked into 10 percentile groups:


| Percentile | Grade |
|------------|-------|
|91-100%     | 100   |
|81-90%      | 90    |
|71-80%      | 80    |
|61-70%      | 70    |
|51-60%      | 65    |
|41-50%      | 60    |
|31-40%      | 55    |
|21-30%      | 50    |
|11-20%      | 45    |
|0-10%       | 40    |

40% is the minimum grade but you could get less if:
- any submission is missing the .java file, or .class file,  or strategy description file, or Assignment Cover Sheet (-10 marks)
- any source code is not neat and indented properly (-10 marks)
- any source code doesn't include your name or student number or class name (-10 marks)

