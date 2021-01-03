class Sound
{
  float x;
  float y;
  float diameter;
  
  Sound(float tempD)
  {
    x = width/2;
    y = height/2;
    diameter= tempD;
  }
  void ascend()
  {
    y--;
    x=x+random(-3,4);
  }
  void display ()
  {
   noStroke();
   fill(134,50,75);
   ellipse(x, y,diameter,diameter);
  }
  
  void top()
  {
    if(y < diameter/2)
    {
      y=diameter;
    }
  }
}
