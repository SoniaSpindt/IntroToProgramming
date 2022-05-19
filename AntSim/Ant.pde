public class Ant{
 int x;
 int y;
 
 public Ant(int middle){
   // Ants begin at (200, 200) because this is where the nest is located.
   x = middle / 2;
   y = middle / 2;
 }
 
 void drawAnt(){
   fill(255);
   rect(x, y, 10, 10);
 }
 
 
}
