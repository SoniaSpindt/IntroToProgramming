public class Ant{
 int x;
 int y;
 String currentDirection;
 
 public Ant(int middle){
   // Ants begin at (200, 200) because this is where the nest is located.
   x = middle / 2;
   y = middle / 2;
   currentDirection = "Up";
 }
 int getY(){
   return y; 
 }
 int getX(){
   return x; 
 }
 
 void drawAnt(){
   fill(0);
   rect(x, y, 10, 10);
 }

 void moveAnt(){
   
   
   // No food in nearby cells? Randomly move.
   String[] directions = {"Up", "Right", "Down", "Left"};
   int idx = int(random(0, 4));
   while(currentDirection == "Up" && idx == 2){
     idx = int(random(0, 4));
   }
   while(currentDirection == "Down" && idx ==0){
     idx = int(random(0, 4)); 
   }
   while(currentDirection == "Right" && idx == 3){
     idx = int(random(0, 4)); 
   }
   while(currentDirection == "Left" && idx == 1){
     idx = int(random(0, 4)); 
   }
   
   if(directions[idx] == "Up"){
     y = y - 10;
   }else if(directions[idx] == "Right"){
     x = x + 10; 
   }else if(directions[idx] == "Down"){
     y = y + 10; 
   }else if(directions[idx] == "Left"){
     x = x - 10;
   }
   currentDirection = directions[idx];
 }
}
