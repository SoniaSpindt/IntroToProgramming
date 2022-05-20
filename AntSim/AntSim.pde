int numAnts = 1; // Assign this to a single value.
int canvasSize = 1200; // Assign this to a single value that is greater than 10 (I recommend at least 200).
int numFood = 10; // Assign this to a single value.


// Do not change any of the code found below.
// Do not change any code found in the other tabs.
Colony colony;
Grid grid;
void settings(){
  size(canvasSize, canvasSize);
}

void setup(){
  background(0);
  colony = new Colony(numAnts, numFood, canvasSize);
  grid = new Grid(canvasSize, numFood);
  grid.drawGrid();
  frameRate(2);
}

void draw(){
  grid.drawGrid();
  grid.updatePheramones(colony.getColony());
  colony.drawColony();
  colony.moveColony();
}
