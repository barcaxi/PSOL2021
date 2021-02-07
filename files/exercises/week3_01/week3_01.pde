color circleColour;
float circleRadius;
float circleX;

void setup()
{
  size(640,360);
  circleColour = color(255, 0, 0);
  circleRadius=100;
  circleX = width/2;
  
}

void draw()
{
  background(0,0,0);
  fill(255);
  ellipse(circleX,circleY,circleRadius*2,circleRadius*2);
}
