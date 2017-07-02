
public class BoardElement{
  Board board;
  int row, col, w, h;
  color fillColor;
  
  public Board getBoard(){return this.board;}
  public int getRow(){return row;}
  public int getCol(){return col;}
  public int getWidth(){return w;}
  public int getHeight(){return h;}
  public color getFillColor(){return fillColor;}
  public void setFillColor(color value){fillColor = value;}
}