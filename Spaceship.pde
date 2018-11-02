class Spaceship extends Floater  
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
  public Spaceship()
  {
  	corners = 7;
  	int[] xS = {-9, -7, -10, -10, -7, -9, 7};
  	int[] yS = {7, 5, 2, -2, -5, -7, 0};
  	xCorners = xS;
  	yCorners = yS;
  	myColor = #B9364A;
  	myCenterX = myCenterY = 300;
  	myDirectionX = myDirectionY = 0;
  	myPointDirection = 0;
  }
}
