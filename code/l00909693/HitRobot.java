package l00909693;
import robocode.*;

public class HitRobot extends Robot
{
	public void run() 
	{
		while(true) 
		{
			turnRight(360);
		}
	}

	public void onHitRobot(HitRobotEvent event) 
	{
		double robotBearing=event.getBearing();
		if(robotBearing<0)
			turnLeft(robotBearing*-1);
		else
			turnRight(robotBearing);
		fire(3);
	}
	
}

