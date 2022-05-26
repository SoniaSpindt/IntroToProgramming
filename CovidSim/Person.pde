public class Person{
  boolean susceptible;
  boolean infected;
  boolean alive;
  int x;
  int y;
  String currentDirection;
  boolean hitEdge;
  final String[] possibleDirections = {"Up", "Right", "Down", "Left"};
  
  public Person(int citySize, InfectedCount count){
    alive = true;
    hitEdge = false;
    x = getRand10(0, citySize);
    y = getRand10(0, citySize);
    currentDirection = possibleDirections[int(random(0, 4))];
    
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
  
  public int getX(){
    return x; 
  }
  
  public int getY(){
    return y; 
  }
  
  public boolean isInfected(){
    return infected; 
  }
  
  public void infect(){
    infected = true; 
  }
  
  public void movePerson(int edge){
    if(x == 0 || y == 0 || x == edge || y == edge){
      if(currentDirection == "Up"){
        currentDirection = "Down";
        y = y + 10;
      }else if(currentDirection == "Right"){
        currentDirection = "Left"; 
        x = x - 10;
      }else if(currentDirection == "Down"){
        currentDirection = "Up";
        y = y - 10;
      }else{
        currentDirection = "Right"; 
        x = x + 10;
      }
    }else{
      if(currentDirection == "Up"){
        y = y - 10;
      }else if(currentDirection == "Right"){
        x = x + 10;
      }else if(currentDirection == "Down"){
        y = y + 10;
      }else{
        x = x - 10;
      }
    }
    println("X " + x);
    println("Y " + y);
  }
  
  public void drawPerson(){
    noStroke();
    if(susceptible){
      fill(140); 
    }
    if(infected){
      fill(255, 0, 0); 
    }
    
   ellipse(x, y, 10, 10); 
  }  
}
