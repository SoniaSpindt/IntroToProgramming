public class Food{
  int x;
  int y;
  
  public Food(int canvasSize){
    float ratioSize = float(canvasSize)/10;
    x = int(random(ratioSize));
    y = int(random(ratioSize));
    
    while(x % 10 != 0){
      x = int(random(ratioSize));
    }
    
    while(y % 10 != 0){
      y = int(random(ratioSize)); 
    }

  }
  
  public void drawFood(){
    fill(255, 0, 0);
    rect(x, y, 10, 10); 
  }
  
  public int getFoodX(){
    return x; 
  }
  
  public int getFoodY(){
    return y; 
  }
}
