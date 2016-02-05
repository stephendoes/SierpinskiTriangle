int triSize =10;
public void setup()
{
background(0);
size(800,800);
}
public void draw()
{
sierpinski(100,700,600);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	
if (len <= triSize)

triangle(x, y, x+len,y, x+len/2,y-len);
else 
	{
	 fill(255,0,0);
	 sierpinski(x, y, len/2) ;
	 fill(0,0,255);
	  sierpinski(x+len/2, y,len/2);
	 fill(0,255,0);
	 sierpinski(x+len/4, y-len/2, len/2); 
	}

}



