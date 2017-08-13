import java.lang.Math;

// Colors
public final color RED = color(255, 0, 0);
public final color BLUE = color(0, 0, 255);
public final color BLACK = color(0, 0, 0);
public final color WHITE = color(255, 255, 255);
public final color GRAY = color(180, 180, 180);
public final color LIGHT_GRAY = color(220, 220, 220);

public final color BACKGROUND_COLOR = GRAY;
public final color LINE_COLOR = LIGHT_GRAY;
public final color FILLED_LINE_COLOR = BLACK;
public final color DOT_COLOR = BLACK;
public final color BOX_COLOR = WHITE;

// Consts
public final int BOARD_WIDTH = 3; // inital value
public final double DOT_BOX_RATIO = ((float) 1/6);
public final String FONT = "Arial";

public Board b;
public Screen currentScreen;

public void setup(){
  size(360, 640);
  noStroke();
  currentScreen = new Multiplayer(BOARD_WIDTH);
}
public void draw(){
  background(BACKGROUND_COLOR);
  currentScreen.draw();
}
public void mouseClicked(){
  currentScreen.click(mouseX, mouseY);
}