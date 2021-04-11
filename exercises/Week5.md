# Week 5

> You MUST complete ALL Week 4 exercises before attempting these exercises

- [Exercise 1](#exercise-1)
- [Exercise 2](#exercise-2)


## Exercise 1

> Complete ALL the exercises in this section.

1.	Using the code below create a new robot called ``RandomBot.java``. 

	```java
	package L00000000;  // your L number here
	import robocode.*;
	import java.util.Random;

	public class RandomBot extends Robot
	{
		public void run()
		{	  
			Random random = new Random();
			int x,y;
			while(true)
			{
				x=random.nextInt(800);  //generate a random number from 1..800 for x & y
				y=random.nextInt(800);
				out.println("going to ("+x+","+y+")");
				MoveTo(x,y); 
			}
		}
		public void MoveTo(int x2,int y2)
		{
			int x1=(int)getX();
			int y1=(int)getY();
			
			// get distance
			double d=Math.sqrt(((x1-x2)*(x1-x2)) + ((y1-y2)*(y1-y2)));
			
			// get angle
			double angle=Math.atan2((y2-y1),(x2-x1)) * (180/Math.PI);
			
			// calculate turn angle
			angle=getHeading()+angle+270;
					
			// normalise angle
			...
			...
			...
			
			// turn and go 
			out.println("turning left "+(int)angle+" degrees");
			turnLeft(angle);
			ahead(d);
	   }
	}

	```


1.	In the ``RandomBot`` method ``MoveTo()`` at the missing code, add the appropriate code to normalise 
	the turn angle calculated.
	
	Start a new battle using ``RandomBot`` versus *SittingDuck* and observe how it turns from one point to the next.
	View the robot's console window to see the (x,y) coordinates and normalised turn angle.
	It should turn efficiently, i.e. never more than 180 degrees left or right.


## Exercise 2

> Complete ALL the exercises in this section.

1.	Write a new robot called ``RadarFire`` that implements the behaviour of the same robot demonstrated in the lecture slides. 
	It should use it's radar to detect an opponent and then move its gun to that position and fire.
	Test your solution works correctly.

1.	The robots ``RadarFire`` and ``RandomBot`` both normalise angles.  ``RadarFire`` normalises an angle for *targeting* and ``RandomBot`` normalises an angle for *turning*.
	
	The code below shows a modified version of ``RandomBot`` where a method called ``normaliseAngle()`` is called.	It replaces the sequence of normalise calculations by calling a method that will do the normalisation for it.
	
	You must write the code required in the method ``normaliseAngle()`` to calculate and return the normalised angle.
	
	```java
	package l00000000;  // your l number here
	import robocode.*;
	import java.util.Random;

	public class RandomBot extends Robot
	{
		public void run()
		{	  
			Random random = new Random();
			int x,y;
			while(true)
			{
				x=random.nextInt(800);  //generate a random number from 1..800 for x & y
				y=random.nextInt(800);
				out.println("going to ("+x+","+y+")");
				MoveTo(x,y); 
			}
		}

		public void MoveTo(int x2,int y2)
		{
			int x1=(int)getX();
			int y1=(int)getY();
			
			// get distance
			double d=Math.sqrt(((x1-x2)*(x1-x2)) + ((y1-y2)*(y1-y2)));
			
			// get angle
			double angle=Math.atan2((y2-y1),(x2-x1)) * (180/Math.PI);
			
			// calculate turn angle
			angle=getHeading()+angle+270;
					
			// normalise angle
			angle=normaliseAngle(angle);
			
			// turn and go 
			out.println("turning left "+(int)angle+" degrees");
			turnLeft(angle);
			ahead(d);
		}

		public double normaliseAngle(double angle)
		{
			...
			...

			return angle;
		}
	}

	```

	The method ``normaliseAngle()`` can be used whenever needed for targeting and/or turning.
	
