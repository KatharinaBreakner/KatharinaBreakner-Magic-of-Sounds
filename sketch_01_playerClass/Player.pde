class Player
{
  float x;
  float y;
  int rad = 25; //Radius von Player
  
  int move = 2;
  boolean [] keys = new boolean[128]; //from ascii table , include all caracter from the computer, that could be pressed

  
  Player()
  {
  x = width/2;
  y = height/2;
  }
  
  void display ()
  {
   noStroke();
   fill(217,77,51);
   ellipse(x, y,2*rad,2*rad); 
  }
  
  void movethePlayer()

{
   if(keys['a']) //check if the A Button is pressed from my keyarray (index 97)
 x--;
 
 if(keys['d'])
 x++;
 
 if (keys['w'])
 y--;
 
 if(keys['s'])
 y++;
}

public void keyPressed()

{
  keys [key] = true; //hit the last key which was pressed and set this letter in the array to true, so I can store multiple keypressed --> makes the playermovement smoother 
}

public void keyReleased()

{
  keys [key] = false;
}
}
