int numAnts = 10; // Assign this to a single value.
int canvasSize = 600; // Assign this to a single value that is greater than 10 (I recommend at least 200).



// Do not change any of the code found below.
// Do not change any code found in the other tabs.
Colony colony;
Grid grid;
void settings(){
  size(canvasSize, canvasSize);
}

void setup(){
  background(0);
  colony = new Colony(numAnts, canvasSize);
  grid = new Grid(canvasSize);
  grid.drawGrid();
}

void draw(){
  colony.drawColony();
}
