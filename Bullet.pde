class Bullet extends Floater
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
	public Bullet(Spaceship theShip)
	{
		myPointDirection = ship.getPointDirection();
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + theShip.getDirectionY();
	}
	public void show()
	{
		fill(7,237,24);
		noStroke();
		ellipse((float)myCenterX,(float)myCenterY,5,5);
	}
	public void move()
	{
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY; 
	}

}