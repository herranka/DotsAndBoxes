
public class Player{
  private String name;
  private color fillColor;
  private int score;
  public Player(String name, color fillColor){
    this.name = name;
    this.fillColor = fillColor;
    this.score = 0;
  }
  
  public String getName(){return name;}
  public color getfillColor(){return fillColor;}
  public int getScore(){return score;}
  public void setScore(int value){score = value;}
  public void addToScore(int value){score += value;}
}