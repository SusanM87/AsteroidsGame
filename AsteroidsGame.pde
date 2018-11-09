//your variable declarations here
Spaceship ship;
Star[] stars = new Star[150];
Asteroid[] astrid = new Asteroid[15];
public void setup() 
{
  size(600,600);
  ship = new Spaceship();
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Star();
  }
  for(int i = 0; i < astrid.length; i++)
  {
  	astrid[i] = new Asteroid();
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
	for(int i = 0; i < astrid.length; i++)
  	{
  		astrid[i].show();
  		astrid[i].move();
  	}
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
		ship.setX((int)(Math.random()*601));
		ship.setY((int)(Math.random()*601));
	}
}