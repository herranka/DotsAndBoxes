
public class Dot extends BoardElement{
  public Dot(Board board, int row, int col){
    this.board = board;
    this.row = row;    
    this.col = col;
    this.w = board.dotWidth;
    this.h = w;
    this.fillColor = DOT_COLOR;
  }
}