int citySize = 500; // Assign to an expression that represents the relative size of Denver County sq
int populationSize = 4650; // Assign to an expression that represents number of people per square mile (3922)
int infectedSeed = 1; // Assign to an expression that evaluations to a number greater than 0 but less than 10.
int distance = 10; // Assign this to a value that represents how close people have to be in order to infect one another. This represents an upperbound.

City myCity;
public void settings(){
  size(citySize, citySize);
}

public void setup(){
  background(255);
  myCity = new City(populationSize, citySize, infectedSeed);
  frameRate(10);
}

public void draw(){
  background(255);
  myCity.drawCity();
  myCity.spreadDisease(distance);
  myCity.movePopulation(citySize);
}
