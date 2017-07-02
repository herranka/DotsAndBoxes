
public class Board{
  private int w, dotWidth, boxWidth;
  private int[] origin, menuOrigin;
  private ArrayList<ArrayList<BoardElement>> board;
  
  public Board(int w){
    reset(w);
  }
  public ArrayList<ArrayList<BoardElement>> newBoard(int w){
    ArrayList<ArrayList<BoardElement>> board = new ArrayList<ArrayList<BoardElement>>();
    int r = 0;
    int c = 0;
    for (int a = 0; a < w; a++){
      ArrayList<BoardElement> row1 = new ArrayList<BoardElement>();
      ArrayList<BoardElement> row2 = new ArrayList<BoardElement>();
      r = 2*a;
      for (int b = 0; b < w; b++){
        c = 2*b;
        row1.add(new Dot(this, r, c));
        row1.add(new Line(this, r, c+1));
        row2.add(new Line(this, r+1, c, false)); // vertical line
        row2.add(new Box(this, r+1, c+1));
      }
      c += 2;
      row1.add(new Dot(this, r, c));
      row2.add(new Line(this, r+1, c, false)); // vertical line
      board.add(row1);
      board.add(row2);
    }
    ArrayList<BoardElement> row = new ArrayList<BoardElement>();
    r += 2;
    for (int i = 0; i < w; i++){
      c = 2*i;
      row.add(new Dot(this, r, c));
      row.add(new Line(this, r, c+1));
    }
    row.add(new Dot(this, r, c+2));
    board.add(row);
    return board;
  }
  public void reset(int w){
    this.w = w;
    //final double a = (DOT_BOX_RATIO*(w + 1) + width);
    //final int b = (int)((width / a) * a);
    //this.origin = new int[] {(width - b)/2,(width - b)/2 + height};
    double boardWidthBox = ((w+1)*DOT_BOX_RATIO + w); // width expressed in boxWidths
    int boardWidth = (int)(((int)(width / boardWidthBox))*boardWidthBox);
    int x = (int)((width - boardWidth)/2);
    int y = height - boardWidth - x;
    this.origin = new int[]{x,y};
    this.menuOrigin = new int[]{x,x};
    
    this.dotWidth = (int) ((DOT_BOX_RATIO / boardWidthBox) * boardWidth);
    this.boxWidth = (int) (boardWidth / boardWidthBox);
    this.board = newBoard(w);
  }
  
  public void draw(){
    int[] pos = origin;
    for (int a = 0; a < this.board.size(); a++){
      ArrayList<BoardElement> row = this.board.get(a);
      for (int b = 0; b < row.size(); b++){
        BoardElement o = row.get(b);
        fill(o.getFillColor());
        rect(pos[0], pos[1], o.getWidth(), o.getHeight());
        if (b == row.size()-1){
          pos = new int[]{origin[0], origin[1] + o.getHeight()};
        }
        else{
          pos = new int[]{pos[0] + o.getWidth(), pos[1]};
        }
        
      }
    }
  }
  
  
  public ArrayList<BoardElement> get(int index){return board.get(index);}
  public int size(){return board.size();}
 
  public int getBoxWidth(){return boxWidth;}
  public int getDotWidth(){return dotWidth;}
  public int getWidth(){return w;}
  public void setWidth(int w){reset(w);}
  public ArrayList<ArrayList<BoardElement>> getBoard(){return board;}
  
}