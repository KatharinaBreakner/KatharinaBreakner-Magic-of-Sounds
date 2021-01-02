Player p;
Sound g1;
Sound g2;

int xPlayer;
int yPlayer;
int rad = 25; //Radius from Player

int move = 2;
int red01=0;

boolean [] keys = new boolean[128]; //from ascii table , include all caracter from the computer, that could be pressed



void setup()
{
 size (800,800);
 noCursor();
 p =new Player();
 g1 = new Sound(50);
 g2 = new Sound(20);
 
 xPlayer = width/2;
 yPlayer = height/2;
}

void draw()

{
  background (247,246,240);
  //p.display();
  g1.display();
  g1.ascend();
  g2.display();
  g2.ascend();
  
  movethePlayer();
  fill(217,77,51);
  ellipse(xPlayer, yPlayer,2*rad,2*rad);
}

void movethePlayer()

{
   if(keys['a']) //check if the A Button is pressed from my keyarray (index 97)
 xPlayer--;
 
 if(keys['d'])
 xPlayer++;
 
 if (keys['w'])
 yPlayer--;
 
 if(keys['s'])
 yPlayer++;
 
 //Create BoundariesCollider
 
 if (xPlayer < 0) //Player goes off left of window
  {
    xPlayer = xPlayer + move;
  }
  
  if (xPlayer > width) //Player goes off right of window
  {
    xPlayer = xPlayer - move;
  }
  
  if (yPlayer < 0) //Player goes off top of window
  {
    yPlayer = yPlayer + move;
  }
  
  if (yPlayer > height) //Player goes off bottom of window
  {
    yPlayer = yPlayer - move;
  }
  
  /*Collider Object test
  fill (red01, 51,102);
  rect(xCollider,yCollider,widthCollider,heightCollider);
  
  if (xPlayer > xCollider-widthCollider && xPlayer < xCollider+heightCollider && yPlayer > yCollider-heightCollider && yPlayer < yCollider+heightCollider)
  {
    red01=200;
  }
  else
  {
    red01=0;
  }*/
  
}

void keyPressed()

{
keys [key] = true; //hit the last key which was pressed and set this letter in the array to true, so I can store multiple keypressed --> makes the playermovement smoother 
}

void keyReleased()

{
  keys [key] = false;
}
