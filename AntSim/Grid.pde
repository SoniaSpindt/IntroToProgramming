public class Grid{
  Cell[][] grid;
  ArrayList<Food> foodItems = new ArrayList<Food>();
  
  public Grid(int size, int numFood){
    makeCells(size);
    makeNest(size/10);
    dropFood(size, numFood);
  }
  
  void makeNest(int size){
    Cell temp = grid[size/2][size/2]; 
    temp.buildNest();
  }
  
  void dropFood(int size, int numFood){
    // Create random food items
    for(int i = 0; i < numFood; i++){
      foodItems.add(new Food(size)); 
    }
    
    // Update cells to reflect food presence
    for(int i = 0; i < foodItems.size(); i++){
      Cell temp = grid[foodItems.get(i).getFoodX()][foodItems.get(i).getFoodY()];
      temp.updateFoodStatus();
    }  
  }
  
  void makeCells(int s){
    // Makes a grid of cells
    // The ant nest is found in the (near) center of every grid
    int sizeRatio = s / 10;
    grid = new Cell[sizeRatio][sizeRatio];
    for(int i = 0; i < sizeRatio; i++){
      for(int j = 0; j < sizeRatio; j++){
        grid[i][j] = new Cell(i*10, j*10);
        if(i == sizeRatio / 2 && j == sizeRatio / 2){
          grid[i][j].buildNest();
        } 
      }
    }
  }
  
  void updatePheramones(Colony ants){
     for(int i = 0; i < ants.getColony().size(); i++){
       for(int j = 0; j < grid.length; j++){
         for(int k = 0; k < grid[0].length; k++){
           
         }
       }
     }
  }
  
  void drawGrid(){
    for(int i = 0; i < grid.length; i++){
      for(int j = 0; j < grid.length; j++){
        fill(0, 255, 0);
        
        if(grid[i][j].hasFood()){
          fill(255, 0, 0);
        }
        if(grid[i][j].hasNest()){
          fill(255, 255, 0); 
        }
        if(grid[i][j].hasPheramone()){
          fill(0, 255, 255);
        }
        
        rect(grid[i][j].x, grid[i][j].y, 10, 10);
      }
    }
  }
}
