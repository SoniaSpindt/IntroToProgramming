public class UI{
  int dayCount;
  int infected;
  int dead;
 
  public UI(int seed){
    dayCount = 0;
    infected = seed;
    dead = 0;
  }
  
  public void update(int frames, int infections){
    dayCount = frames / 10;
    infected = infections;
  }
  
  /* Maybe this is where students do expression work */
  public void display(int citySize){
    textSize(citySize * 0.03);
    textAlign(CENTER);
    fill(0);
    text("Day: " + dayCount, citySize * 0.1, citySize - 25);
    text("Infected: " + infected, citySize * 0.45, citySize - 25);
    text("Dead: " + dead, citySize * 0.85, citySize - 25);
  }
}
