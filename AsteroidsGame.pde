Spaceship ship;
Star[] stars = new Star[150];
ArrayList <Asteroid> astrid = new ArrayList <Asteroid>();
ArrayList <Bullet> ammo = new ArrayList<Bullet>();

public void setup() 
{
  size(600,600);
  ship = new Spaceship();
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Star();
  }
  for(int i = 0; i < 16; i++)
  {
  	astrid.add(new Asteroid());
  }

}

public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}
	for(int k = 0; k < ammo.size(); k++)
  	{
	  	ammo.get(k).show();
	  	ammo.get(k).move();
	 }
	ship.show();
	ship.move();
	for(int i = 0; i < astrid.size(); i++)
  	{
  		astrid.get(i).show();
  		astrid.get(i).move();
  		float d = dist(ship.getX(), ship.getY(), astrid.get(i).getX(), astrid.get(i).getY());
  		if (d < 20)
  			astrid.remove(i);

  		for(int k = 0; k < ammo.size(); k++)
  		{
	  		float j = dist(ammo.get(k).getX(), ammo.get(k).getY(), astrid.get(i).getX(), astrid.get(i).getY());
	  		if (j < 20)
  			{
	  			astrid.remove(i);
	  			ammo.remove(k);
	  			break;
  			}
  		}
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
	if (key == 'i')
	{
		ammo.add(new Bullet(ship));
	}
}