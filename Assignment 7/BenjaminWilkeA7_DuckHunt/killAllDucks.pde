void killAllDucks()
{
  for(Duck d : ducks){  
    d.isDead = true;
  }
}

void frankensteinAllDucks()
{
  for(Duck d : ducks){  
    d.isDead = false;
  }
}
