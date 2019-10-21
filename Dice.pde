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
  int myX,myY,mySize,myValue,myBinary;
  
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
    // if (myValue == 1) {
    //   myBinary = 001;
    // } else if (myValue == 2) {
    //   myBinary = 001;
    // } else if (myValue == 3) {
    //   myBinary = 011;
    // } else if (myValue == 4) {
    //   myBinary = 100;
    // } else if (myValue == 5) {
    //   myBinary = 101;
    // } else {
    //   myBinary = 110;
    // }
  }
  void show()
  {
    fill((int)(Math.random()*255+1),(int)(Math.random()*255+1),(int)(Math.random()*255+1));
    rect(myX,myY,mySize,mySize);
    fill(0);
    textSize(mySize*0.7);
    //text(myValue,myX+mySize*0.25,myY+mySize*0.75);
    noStroke();
    fill(255);
    if (myValue==1) {
      ellipse(myX+0.5*mySize,myY+0.5*mySize,15,15);
    }
    else if (myValue==2) {
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize,15,15);
    }
    else if (myValue==3) {
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize+20,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize+20,15,15);
      ellipse(myX+0.5*mySize,myY+0.5*mySize-20,15,15);
    }
    else if (myValue==4) {
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize-20,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize-20,15,15);
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize+20,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize+20,15,15);
    }
    else if (myValue==5) {
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize-20,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize-20,15,15);
      ellipse(myX+0.5*mySize,myY+0.5*mySize,15,15);
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize+20,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize+20,15,15);
    }
    else if (myValue==6) {
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize-20,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize-20,15,15);
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize,15,15);
      ellipse(myX+0.5*mySize-20,myY+0.5*mySize+20,15,15);
      ellipse(myX+0.5*mySize+20,myY+0.5*mySize+20,15,15);

    }
  }
}
