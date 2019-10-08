Die die1;
//int x = 30;
int sum = 0;
//int y = 30;
void setup()
{
  noLoop();
  size(600,600);
  //die1 = new Die(50,50,200);
}
void draw()
{
  background(192);
  //while (x<100000){
    //die1 = new Die((int)(Math.random()*500),(int)(Math.random()*500),(int)(Math.random()*70+30));
    //die1.show();
    //sum = sum + die1.myValue;
    //x++;
  //}
  for (int y = 0; y<=500; y=y+100) {
    for (int x = 0; x<=500; x=x+100) {
      die1 = new Die(x,y,100);
      die1.show();
      sum = sum + die1.myValue;
    }
  }
  
  textSize(25);
  fill(255);
  text("sum of dice: "+sum,20,20);
}
void mousePressed()
{
  die1.roll();
  //x = 0;
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
