public void setup()
{
	size(500,500);
	background(0);
	noFill();
}
public void draw()
{
	sierpinski(50,450,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len>20)
	{
		sierpinski(x,y,len/2);
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y-(len/2),len/2);
	}
	else
	{
		stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		triangle(x,y,x+len,y,x+(len/2),y-len);
	}
}
