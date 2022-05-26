int populationSize = 100; // Assign to an expression that evaluates to a number greater than 1 and less than 1000000.
int citySize = 1000; // Assign to an expression that evaluates to a number greater than 200 and less than 1000. CHALLENGE: Write the expression you need to get the size to perfectly fit your computer screen using Processing environment variables.
int infectedSeed = 10; // Assign to an expression that evaluations to a number greater than 0 but less than 10.

public void settings(){
  size(citySize, citySize);
}

public void setup(){
  background(255);
  City myCity = new City(populationSize, citySize, infectedSeed);
  myCity.drawCity();
}

public void draw(){
  
}
