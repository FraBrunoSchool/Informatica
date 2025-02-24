public class Cerchio {
  private float dim;   //diametro cerchio
  private final static int DIM_DEFAULT = 100;
  private float cordX;  //coordinate del centro
  private float cordY;
  private color colore;  //colore riempimento
  private color bordo;   //colore bordo

  public Cerchio(int numRighe, int numCol){
    cordX = width / numCol;  //piazzato al centro della finestra
    cordY = height / numRighe;
    //colore di default bianco con bordo nero
    colore = color(255, 255, 255);
    bordo = color (0, 0, 0);
    dim = DIM_DEFAULT;
  }

  public void show(int numRighe, int numCol){
    stroke(bordo);  //colore bordo
    fill(colore);  //colore di riempimento
    for (int i = 1; i <= numCol*numRighe; i++) {
      circle(cordX*i, cordY*i, dim);  //centro X,Y e diametro dim
    }
    //circle(cordX, cordY, dim);  //centro X,Y e diametro dim
  }

  public void setCordX(float x){
    cordX = x;
  }

   public void setCordY(float y){
    cordY = y;
  }

  public float getCordX(){
    return cordX;
  }

   public float getCordY(){
    return cordY;
  }

  public void setColore(color colore){
    this.colore = color(colore);
  }

  public color getColore(){
    return colore;
  }

  public color getBordo(){
    return bordo;
  }

  public void setBordo(color colore){
    bordo = colore;
  }
}
