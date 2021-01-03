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
   p = new Player();
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
  
  p.moveThePlayer(keys);
  p.display();
  fill(217,77,51);
  ellipse(xPlayer, yPlayer,2*rad,2*rad);
}

  public void keyPressed()
  
  {
    keys [key] = true; //hit the last key which was pressed and set this letter in the array to true, so I can store multiple keypressed --> makes the playermovement smoother 
  }
  
  public void keyReleased()
  
  {
    keys [key] = false;
  }
