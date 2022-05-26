public class Person{
  boolean susceptible;
  boolean infected;
  boolean alive;
  PVector position;
  PVector velocity;
  
  public Person(int citySize, InfectedCount count){
    alive = true;
    int x = getRand10(0, citySize);
    int y = getRand10(0, citySize);
    position = new PVector(x, y);
    velocity = PVector.random2D();
    velocity.mult(5);
    // First n people are infected. The value of n is determined by a user, which becomes a property of InfectedCount objects.
    if(!count.enoughInfected()){
      susceptible = false;
      infected = true;
      count.updateInfectedCount();
    }else{
      susceptible = true;
      infected = false;
    }
  }
  
  public int getRand10(int min, int max){
    // Returns a random number that is divisible by 10
    return round((random(1)*(max-min)+min)/10)*10;
  }
  
  public boolean isInfected(){
    return infected; 
  }
  
  public void infect(){
    infected = true; 
  }
  
  public void movePerson(int edge){
    position.add(velocity);
    hitEdge(edge);
  }
  
  public void hitEdge(int edge){
    // Check for edge of city.
    // If at edge, bounce back.
    if (position.x > edge - 10) {
      position.x = edge - 10;
      velocity.x *= -1;
    } else if (position.x < 10) {
      position.x = 10;
      velocity.x *= -1;
    } else if (position.y > edge - 10) {
      position.y = edge - 10;
      velocity.y *= -1;
    } else if (position.y < 10) {
      position.y = 10;
      velocity.y *= -1;
    }
  }
  
  public PVector getPosition(){
    return position; 
  }
  
  public void drawPerson(){
    noStroke();
    if(susceptible){
      fill(140); 
    }
    if(infected){
      fill(255, 0, 0); 
    }
    
   ellipse(position.x, position.y, 10, 10); 
  }  
}
