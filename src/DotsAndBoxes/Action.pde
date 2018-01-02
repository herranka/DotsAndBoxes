// TODO: FIX

public class Action{
  Callable<Void> func; // func to be called
  Screen screen, originScreen; // alternatively screen to be switched to and origin screen
  public Action(Callable<Void> func){
    this.func = func;
    this.screen = null;
    this.originScreen = null;
  }
  public Action(Screen screen){
    this.screen = screen;
    this.func = null;
  }
  public void run(){
    if(func != null){
      // call func
    }
    else{
      currentScreen = screen;
    }
  }
}