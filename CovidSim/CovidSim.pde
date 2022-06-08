int populationSize = 4650; // Assign to an expression that represents number of people per square mile (3922)
int infectedSeed = 1; // Assign to an expression that evaluations to a number greater than 0 but less than 10.


int distance = 10; 
int citySize = 500;
City myCity;
UI stats;
public void settings(){
  size(citySize, citySize);
}

public void setup(){
  background(255);
  myCity = new City(populationSize, citySize, infectedSeed);
  stats = new UI(infectedSeed);
  frameRate(10);
}

public void draw(){
  background(255);
  myCity.drawCity(citySize);
  myCity.spreadDisease(citySize, frameCount);
  myCity.movePopulation(citySize);
  stats.update(frameCount, myCity.getInfectedCount(), myCity.getDeadCount());
  stats.display(citySize);
}
