class Player
{
  Player()
  {
    x = width/2;
    y = height/2;
  }
  
  float x;
  float y;
  int rad = 25; //Radius von Player
  
  int move = 2;
  boolean [] keys = new boolean[128]; //from ascii table , include all caracter from the computer, that could be pressed
  
  
  void display ()
  {
   noStroke();
   fill(217,77,51);
   ellipse(x, y,2*rad,2*rad); 
  }
  
  void moveThePlayer(boolean [] currentKeys)
  {
     keys = currentKeys;
     if(keys['a']) //check if the A Button is pressed from my keyarray (index 97)
     {
       x--;
     }
     
     if(keys['d'])
     x++;
     
     if (keys['w'])
     y--;
     
     if(keys['s'])
     y++;
  }

}
