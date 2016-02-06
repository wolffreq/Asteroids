class Asteroid extends GameObject 
{
  float thetaDir;
  Asteroid()
  {
    super(random(0, -width), random(0, -height), 50);    
    c = color(255, 0, 0);
    forward.x = random(-1, 1);
    forward.y = random(-1, 1);
    forward.normalize();
    thetaDir = random(-0.2f, 0.2f);
    sides = (int)random(6,9);
    sideL = (int)random(20,50);
  }

 

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(255);
    noFill();
     polygon(0, 0, sideL, sides);
    popMatrix();
  }
  

  void update()
  {
    theta += thetaDir;
    pos.add(forward);
    if (pos.x < 0)
    {
      pos.x = width;
    }

    if (pos.x > width)
    {
      pos.x = 0;
    }

    if (pos.y < 0)
    {
      pos.y = height;
    }

    if (pos.y > height)
    {
      pos.y = 0;
    }
  }
}