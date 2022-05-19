public class Grid{
  Cell[][] grid;
  
  public Grid(int s){
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
  
  void drawGrid(){
    for(int i = 0; i < grid.length; i++){
      for(int j = 0; j < grid.length; j++){
        fill(0, 255, 0);
        rect(grid[i][j].x, grid[i][j].y, 10, 10);
      }
    }
  }
}
