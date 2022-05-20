public class Cell{
  int x;
  int y;
  boolean isNest;
  boolean hasFood;
  boolean antPheramone;
  
  public Cell(int x, int y){
    this.x = x;
    this.y = y;
    isNest = false;
    hasFood = false;
    antPheramone = false;
  }
  int getY(){
    return y; 
  }
  int getX(){
    return x; 
  }
  
  void buildNest(){
    isNest = true;
  }
  
  void updateFoodStatus(){
    hasFood = true; 
  }
  
  void dropPheramone(){
    antPheramone = true; 
  }
  
  boolean hasFood(){
    return hasFood;
  }
  
  boolean hasNest(){
   return isNest; 
  }
  
  boolean hasPheramone(){
    return antPheramone; 
  }
}
