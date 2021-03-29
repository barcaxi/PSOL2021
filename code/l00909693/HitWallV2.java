package L00909693;
import robocode.*;

public class HitWallV2 extends Robot
{
  public void run() 
  {
    while(true) 
    {
      ahead(800);       
    }
  }
  public void onScannedRobot(ScannedRobotEvent e)
  {
    fire(1);
  }
  public void onHitWall(HitWallEvent event)
  {
    double wallBearing=event.getBearing();
    if(wallBearing>0)
      turnLeft(90-wallBearing);  
    else
      turnRight(90-Math.abs(wallBearing));
  }
}

