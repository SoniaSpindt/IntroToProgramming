public class City{
  ArrayList<Person> population = new ArrayList<>(); 
  
  public City(int popSize, int citySize, int seedNum){
    InfectedCount ic = new InfectedCount(seedNum);
    for(int i = 0; i < popSize; i++){
      population.add(new Person(citySize, ic)); 
    }
  }
  
  public int getInfectedCount(){
    int infections = 0;
    for(Person p: population){
      if(p.isInfected()){
        infections = infections + 1; 
      }
    }
    return infections;
  }
  
  public void spreadDisease(int citySize){
    for(Person person1: population){
      int x = int(person1.getPosition().x);
      int y = int(person1.getPosition().y);
      if(person1.isInfected()){
        for(Person person2: population){
          if(dist(x, y, person2.getPosition().x, person2.getPosition().y) <= citySize * 0.01){
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
  public void drawCity(int citySize){
    for(Person p: population){
      p.drawPerson(citySize); 
    }
  }
}
