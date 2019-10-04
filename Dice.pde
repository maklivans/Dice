Die die1;

void setup()
{
	noLoop();
	size(300,300);
	die1 = new Die(50,50,100);
}
void draw()
{
	background(192);
	die1.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,mySize;
	
	Die(int x, int y, int size) //constructor
	{
		myX = x;
		myY = y;
		mySize = size;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(myX,myY,mySize,mySize);
	}
}
