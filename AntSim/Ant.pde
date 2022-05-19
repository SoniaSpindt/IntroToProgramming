public class Ant{
 int x;
 int y;
 
 public Ant(int middle){
   // Ants begin at (200, 200) because this is where the nest is located.
   x = middle / 2;
   y = middle / 2;
 }
 
 void drawAnt(){
   fill(0);
   rect(x, y, 10, 10);
 }
 
 void moveAnt(){
   String[] directions = {"Up", "Right", "Down", "Left"};
   int idx = int(random(0, 4));
   if(directions[idx] == "Up"){
     y = y - 10;
   }else if(directions[idx] == "Right"){
     x = x + 10; 
   }else if(directions[idx] == "Down"){
     y = y + 10; 
   }else if(directions[idx] == "Left"){
     x = x - 10;
   }
 }
}
