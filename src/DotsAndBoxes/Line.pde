
public class Line extends BoardElement{
  private boolean horizontal, filled;
  
  public Line(Board board, int row, int col, boolean horizontal){
    this.board = board;
    this.horizontal = horizontal;
    if (horizontal){
      this.w = board.getBoxWidth();
      this.h = board.getDotWidth();
    }
    else{
      this.w = board.getDotWidth();
      this.h = board.getBoxWidth();
    }
    this.row = row;
    this.col = col;
    this.filled = false;
    this.fillColor = LINE_COLOR;
  }
  public BoardElement[] getBoxes(){
    ArrayList<BoardElement> boxes = new ArrayList<BoardElement>();
    if (horizontal){
      if (row != 0){boxes.add(board.get(row-1).get(col));}
      if (row < board.size()-1){boxes.add(board.get(row+1).get(col));}
    }
    else {
      if (col != 0){boxes.add(board.get(row).get(col-1));}
      if (col < board.size()-1){boxes.add(board.get(row).get(col+1));}
    }
    return boxes.toArray(new BoardElement[boxes.size()]);
  }
  public Line(Board board, int row, int col){this(board, row, col, true);}
  
  public color getFillColor(){
    if (filled) {return FILLED_LINE_COLOR;}
    else {return fillColor;}
  }
  public boolean isHorizontal(){return this.horizontal;}
}