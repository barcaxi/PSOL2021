# Week 4

> You MUST complete ALL Week 3 exercises before attempting these exercises

- [Exercise 1](#exercise-1)
- [Exercise 2](#exercise-2)

## Exercise 1

> Complete ALL the exercises in this section.

1.	Create a new robot called ``Bearings``.  
	- Make the robot move forward enough so that it hits a wall.
	- Print to the console the bearing of the wall when your robot collides with it. You'll need to put this print statement in an appropriate location in your code.
	- Compile, run and view this new value being printed.		
			
1.	The bearing is an angle from your robot to another _____ ?
	
1.	A bearing of -45 is to your robot's left or right?

1.	Modify ``Bearings.java`` so when it hits a wall it will move parallel along it.

	Test this works for walls hit to the left and right.  (Check lecture slides for sample code)
		
1.	In ``Bearings.java`` if your robot gets hit by a bullet print the name of the robot that shot you.
	
	Test this works against one of the sample opponents.
	
1.	In the previous exercise the class that must be used is called _____?

1.	In the previous exercise the method from the class ``HitByBulletEvent`` that must be used is _____?
	
1.	In ``Bearings.java``  if your robot gets hit by a bullet turn toward it's bearing and fire back.

	Test this works against one of the sample opponents.  (Check lecture slides for sample code)


## Exercise 2

1.	Open one of your robots that used the ``MoveTo()`` method, for example, ``CenterBotV2``.
	
	Below is an updated ``MoveTo()`` method that turns more effeciently.  
	Update your old method with this one.
	
	```java
	public void MoveTo(int x2,int y2)
	{
	  int x1=(int)getX();
	  int y1=(int)getY();

	  // get distance
	  double d=Math.sqrt(((x1-x2)*(x1-x2)) + ((y1-y2)*(y1-y2)));

	  // get angle
	  //turnLeft(getHeading());
	  double angle=Math.atan2((y2-y1),(x2-x1)) * (180/Math.PI);

	  //move
	  //turnLeft(angle+270);
	  
	  double bestAngle = (getHeading()+270+angle)%360;
	  if(bestAngle>180)
		bestAngle=bestAngle-360;	  
	  turnLeft(bestAngle);
	  
	  ahead(d);
	}
	
	```
		
	-	Some lines have been removed and replaced with one turn instruction 
	-	Run your robot and observe how it turns more effeciently in any direction
	-	Later we'll normalise the angle to make turning more effecient

