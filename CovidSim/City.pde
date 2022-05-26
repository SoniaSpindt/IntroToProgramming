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
      int x = int(person1.getPosition().x);
      int y = int(person1.getPosition().y);
      if(person1.isInfected()){
        for(Person person2: population){
          if(dist(x, y, person2.getPosition().x, person2.getPosition().y) <= distance){
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
