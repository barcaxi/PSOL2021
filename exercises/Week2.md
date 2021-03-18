# Week 2

> You MUST complete ALL Week 1 exercises before attempting these exercises

## Exercises
- [Exercise 1](#exercise-1)
- [Exercise 2](#exercise-2)


## Exercise 1

> Complete ALL the exercises in this section.

1.	Follow these instructions to create a new robot:

	-	Choose: ``Robot > Source Editor`` to launch the Robocode editor
	-	Choose: ``File > New > Robot``
	-	Save your robot as ``Week2Ex1``
	-	Type ``YOUR L number`` as the package name.
	-	Compile this robot code and run it in a battle versus *Walls*


2.	Insert a console print command inside the ``while`` loop to print the robot's current energy level using this code:

	```java
	double energy=getEnergy();
	out.println("energy=" + energy);

	```

	View the output of this command in the robot's console window.

	
3.	Insert a console print command before the ``while`` loop that prints the robot's current (x,y) location. 
	View the output of this command in the robot's console window. 

	
4.	Try *casting* the values returned by the ``getX()`` and ``getY()`` methods to integers by using this code:

	```java
	int x=(int)getX();
	int y=(int)getX();		
	
	```

	Then print the values of the integers x,y.
	Run the code and view the output in the robot's console window. 
	The output should now be rounded to a ``int`` value from a ``double`` value.

	
5.	Write code that sets the colour of your robot to reflect which half of the 800x800 battlefield it's in.

	-	When the robot is in northern half (above 400 pixels) set the robot colour to black
	-	When the robot is in southern half (at or below 400 pixels) set the robot colour to white

	Run and test this works in a battle.


6.	In the previous exercise you changed the colour of the robot's based upon it's position.
	Which method can you use to get the total number of pixels along the y axis of the battlefield?
	See the [Robot API documentation](http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html) for the answer.
	Hint: It is a battlefield property.


7.	In the [Robot API documentation](http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html) find the ``fire()`` method, then answer these questions: 	
	
	(a)	What is the maximum bullet power?
	
	(b)	What is the minimum bullet power?
	
	(c)	Calculate the damage a bullet with power=1.0 will do to another robot
	
	(d)	Calculate the damage a bullet with power=3.0 will do to another robot
	
	(e)	Calculate the energy a robot will get back if it hits another robot with a bullet with power=1.0



## Exercise 2

> Complete ALL the exercises in this section.

1.	Create a new robot called ``TurnNorth``  using this code:

	```java
	package L00909693;  // use your L number
	import robocode.*;
	 
	public class TurnNorth extends Robot
	{
		public void run() 
		{
			double robotHeading=getHeading();
			turnLeft(robotHeading);           // turns north

			while(true) 
			{         
				ahead(200);
				turnRight(180);
			}
		}
	}

	```
		
	Run it in a battle against another sample robot.
	Observe it's ability to always turn north before moving.

	
	
2.	Which ``Robot`` class method returns the direction the robot's body is facing?

		
3.	If your robot faces south its heading is what?

4.	A heading of 45 is point due ...

5.	True or False:  When your robot gets hit by a bullet you can get the bullet's heading.
