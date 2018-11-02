class Star //note that this class does NOT extend Floater
{
	private int  myX, myY;
	public Star()
	{
		myX = (int)(Math.random()*601);
		myY = (int)(Math.random()*601);
	}
	public void show()
	{
		noStroke();
		fill(#FFFFFF);
		ellipse(myX, myY, 3, 3);
	}
}