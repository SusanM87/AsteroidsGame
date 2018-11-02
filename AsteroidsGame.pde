//your variable declarations here
Spaceship ship;
Star[] stars = new Star[150];

public void setup() 
{
  size(600,600);
  ship = new Spaceship();
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Star();
  }
}

public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}
	ship.show();
	ship.move();
}

public void keyPressed()
{
	if (key == 'w')
	{	
		ship.accelerate(1);
	}
	if (key == 'q') //counter clockwise
	{
		ship.turn(-10);
	}
	if (key == 'e') //clockwise
	{
		ship.turn(10);
	}
	if (key == 'o')
	{
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.turn((int)(Math.random()*366));
		ship.myCenterX = (int)(Math.random()*601);
		ship.myCenterY = (int)(Math.random()*601);
	}
}