public class Person{
  boolean susceptible;
  boolean infected;
  boolean alive;
  int x;
  int y;
  
  public Person(int citySize, InfectedCount count){
    alive = true;
    x = int(random(10, citySize - 10)); // Subtract 10 so that people aren't placed at the edge of the screen. People are 10 units wide.
    y = int(random(10, citySize - 10));
    
    // First n people are infected. The value of n is determined by a user, which becomes a property of the count object.
    if(!count.enoughInfected()){
      this.infect();
      susceptible = false;
      infected = true;
      count.updateInfectedCount();
    }else{
      susceptible = true;
      infected = false;
    }
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
