
int Score;
int lives=3;
void setup()
{
  size(900, 900);
  Ship ship = new Ship('W', 'A', 'D', ' ', width / 2, height / 2, color(255));
  gameObjects.add(ship);
  lives = 3;
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  background(0);
  text( "Score: " + Score, width*0.02f, height*0.03f );
  text( "Lives: " + lives, width*0.02f, height*0.05f );
  
  if (lives>0) {
    for (int i = gameObjects.size() - 1; i >= 0; i --)
    {
      GameObject go = gameObjects.get(i);
      go.update();
      go.render();
    }
  } else 

  {
    text("Game Over", (width/2)-20, (height/2));
  }


  if (frameCount % 60 == 0)
  {
    GameObject New = null;
    int i = (int) random(0, 2);
    switch (i)
    {
    case 0:
      New = new Asteroid();
      break;
    case 1:
      New = new Asteroid();
      break;
    }
    gameObjects.add(New);
  }

  checkBulletCollisions();
  checkShipCollisions();
}