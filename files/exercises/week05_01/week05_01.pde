float[] circleX;
float radius;
int index;
int MAX_CIRCLES=5;

void setup()
{
  size(640, 360);
  circleX=new float[MAX_CIRCLES];
  radius=25;
  index=0;
}

void draw()
{
  background(0);
  fill(255);  
  for(int i=0;i<index;i++)
  {    
    ellipse(circleX[i], height/2, radius*2, radius*2);
    text((int)circleX[i],circleX[i],height-20);
  }
}

void mousePressed()
{
  if(index==MAX_CIRCLES) // only store MAX_CIRCLES circles.
    return;
      
  circleX[index]=mouseX; // store mouse x coordinate in array circleX
  index++;  
}
