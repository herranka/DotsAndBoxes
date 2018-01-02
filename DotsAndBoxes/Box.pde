
public class Box extends BoardElement{
  public Box(Board board, int row, int col){
    this.board = board;
    this.w = board.getBoxWidth();
    this.h = w;
    this.row = row;
    this.col = col;
    this.fillColor = BOX_COLOR;
  }
  public Line[] getLines(){
    return new Line[]{
      (Line)board.get(row-1).get(col), 
      (Line)board.get(row).get(col+1), 
      (Line)board.get(row+1).get(col), 
      (Line)board.get(row).get(col-1)
    };
  }
}