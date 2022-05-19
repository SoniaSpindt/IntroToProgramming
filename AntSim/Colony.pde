public class Colony{
  ArrayList<Ant> ants = new ArrayList<Ant>();
  
  public Colony(int numAnts, int numFood, int canvasSize){
    // Creates ants
    for(int i = 0; i < numAnts; i++){
      this.addAnt(new Ant(canvasSize)); 
    }
  }
  
  ArrayList<Ant> getColony(){
   return ants; 
  }
  
  void drawColony(){
    for(Ant a: ants){
      a.drawAnt();
    }
  }
  
  void addAnt(Ant a){
    ants.add(a);
  }
}
