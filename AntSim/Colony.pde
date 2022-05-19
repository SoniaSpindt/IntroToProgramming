public class Colony{
  ArrayList<Ant> ants = new ArrayList<Ant>();
  
  public Colony(int num, int canvasSize){
    for(int i = 0; i < num; i++){
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
