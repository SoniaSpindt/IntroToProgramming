int populationSize = 100; // Assign to an expression that evaluates to a number greater than 1 and less than 1000000.
int citySize = 400; // Assign to an expression that evaluates to a number greater than 200 and less than 1000. CHALLENGE: Write the expression you need to get the size to perfectly fit your computer screen using Processing environment variables.
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
