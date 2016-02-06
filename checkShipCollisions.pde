void checkShipCollisions()
{

  for (int i = gameObjects.size() - 1; i >= 0; i --)
  {
    GameObject go = gameObjects.get(i);
    if (go instanceof Ship)
    {
      for (int j = gameObjects.size() - 1; j >= 0; j --)
      {
        GameObject other = gameObjects.get(j);
        if (other instanceof Asteroid) 
        {

          if (go.pos.dist(other.pos) < go.halfW + other.halfW)
          {
            lives --;
            gameObjects.remove(other);
          }
        }
      }
    }
  }
}