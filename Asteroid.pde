class Asteroid extends Floater
{
	public void setX(int x) {myCenterX = x;}
  	public int getX() {return (int)myCenterX;}   
	public void setY(int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}   
	public double getDirectionX() {return myDirectionX;}
	public void setDirectionY(double y) {myDirectionY = y;}
	public double getDirectionY() {return myDirectionY;}
	public void setPointDirection(int degrees) {myPointDirection = degrees;}
	public double getPointDirection() {return myPointDirection;}
	private int rotSpeed;
	public Asteroid()
	{
		corners = 11;
  		int[] xS = {-5,13,15,13,10,-5,-12,-18,-20,-19,-10};
  		int[] yS = {15,9,-6,-6,-8,-8,-12,-7,-7,6,9};
  		xCorners = xS;
  		yCorners = yS;
  		myColor = #84898E;
  		myCenterX = (int)(Math.random()*width);
  		myCenterY = (int)(Math.random()*height);
  		myDirectionX = (int)(Math.random()*5)-2;
  		myDirectionY = (int)(Math.random()*5)-2;
  		if(myDirectionX == 0)
  			setDirectionX((int)(Math.random()*2+1));
  		myPointDirection = 0;
  		rotSpeed = (int)(Math.random()*11-5);
  		if(rotSpeed == 0)
  			rotSpeed = (int)(Math.random()*5-4);
	}
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
}