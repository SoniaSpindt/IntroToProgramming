public class City{
  ArrayList<Person> population = new ArrayList<>(); 
  
  public City(int popSize, int citySize, int seedNum){
    InfectedCount ic = new InfectedCount(seedNum);
    for(int i = 0; i < popSize; i++){
      population.add(new Person(citySize, ic)); 
    }
  }
  
  public void spreadDisease(int distance){
    for(Person person1: population){
      int x = person1.getX();
      int y = person1.getY();
      if(person1.isInfected()){
        for(Person person2: population){
          if(dist(x, y, person2.getX(), person2.getY()) <= distance){
            person2.infect(); 
          }
        }
      }
    }
  }
  public void movePopulation(int edge){
    for(Person p: population){
      p.movePerson(edge); 
    }
  }
  public void drawCity(){
    for(Person p: population){
      p.drawPerson(); 
    }
  }
}
