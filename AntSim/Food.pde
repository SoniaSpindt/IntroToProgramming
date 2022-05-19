public class Food{
  int x;
  int y;
  
  public Food(int canvasSize){
    float ratioSize = float(canvasSize) / 10.0;
    x = int(random(ratioSize));
    y = int(random(ratioSize));
  }
}
