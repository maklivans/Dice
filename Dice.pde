Die die1;
int x = 0;
int sum = 0;
void setup()
{
  noLoop();
  size(600,600);
  //die1 = new Die(50,50,200);
}
void draw()
{
  background(192);
  while (x<1000){
    die1 = new Die((int)(Math.random()*500),(int)(Math.random()*500),(int)(Math.random()*70+30));
    die1.show();
    sum = sum + die1.myValue;
    x++;
  }
  textSize(15);
  text("sum of dies: "+sum,20,20);
}
void mousePressed()
{
  die1.roll();
  x = 0;
  sum = 0;
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
    fill((int)(Math.random()*255+1),(int)(Math.random()*255+1),(int)(Math.random()*255+1));
    rect(myX,myY,mySize,mySize);
    fill(0);
    textSize(mySize*0.7);
    text(myValue,myX+mySize*0.25,myY+mySize*0.75);
  }
}
