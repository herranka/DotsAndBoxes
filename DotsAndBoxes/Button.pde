public class Button{
  private PImage icon;
  private int w, h, x, y;
  private int border;
  private color fillColor, borderColor;
  private Screen action;
  
  public Button(int x, int y, int w, int h, Screen action){this(x,y,w,h,action,null,null);}
  public Button(int x, int y, int w, int h, Screen action, Integer border){this(x,y,w,h,action,border,null);}
  public Button(int x, int y, int w, int h, Screen action, String iconPath){this(x,y,w,h,action,null, iconPath);}
  
  public Button(int x, int y, int w, int h, Screen action, Integer border, String iconPath){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.action = action;
    if (border != null) this.border = int(border);
    else this.border = 1;
    if (iconPath != null && !iconPath.isEmpty()) this.icon = loadImage(iconPath);
    else this.icon = null;
    this.fillColor = WHITE;
    this.borderColor = BLACK;
  }
  public void draw(){
    if (border == -1) noStroke();
    else{
      strokeWeight(border);
      stroke(borderColor);
    }
    fill(fillColor);
    
    rect(x,y,w,h);
    if (icon != null) image(icon, x+w/10, y+h/10, w-w/5, h-h/5); //centers image within borders of rect
  }
  public void click(){
    if (action != null) currentScreen = action;
  }
  public color getFillColor(){return fillColor;}
  public int getX(){return x;}
  public int getY(){return y;}
  public int getWidth(){return w;}
  public int getHeight(){return h;}
  public int getBorder(){return border;}
  public PImage getIcon(){return icon;}
}