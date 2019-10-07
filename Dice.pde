Die die1;

void setup()
{
  noLoop();
  size(300,300);
  die1 = new Die(50,50,200);
}
void draw()
{
  background(192);
  die1.show();
}
void mousePressed()
{
  die1.roll();
  redraw();
}
class Die //models one single dice cube
{
  int myX,myY,mySize,myValue;
  
  Die(int x, int y, int size) //constructor
  {
    myX = x;
    myY = y;
    mySize = size;
    roll();
  }
  void roll()
  {
    myValue = (int)(Math.random()*6+1);
  }
  void show()
  {
    fill(255);
    rect(myX,myY,mySize,mySize);
    fill(0);
    textSize(mySize*0.7);
    text(myValue,myX+mySize*0.25,myY+mySize*0.75);
  }
}
