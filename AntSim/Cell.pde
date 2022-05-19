public class Cell{
  int x;
  int y;
  boolean isNest;
  boolean hasFood;
  
  public Cell(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void buildNest(){
    isNest = true;
  }
  
  void dropFood(){
    hasFood = true; 
  }
}
