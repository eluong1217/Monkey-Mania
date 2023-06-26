public class Lives{
  int lives;
  boolean mainMenu;
  public Lives (){
    lives = 0;
    mainMenu = true;
  }
  public boolean gameover(){
    if(lives <=0)
       return true;
    else
      return false;
  }
  void playAgain(){
    lives = 3;
    scoreboard.score = 0;
  }
  void menuAgain(){
    mainMenu = true;
  }
  public boolean playButtonCol(){
    int temp = 0;
    if(mouseY > 450 && mouseY < 600)
    temp++;
    if(mouseX > 50 && mouseX < 300)
    temp++;
    if(temp == 2)
    return true;
    else return false;
  }
  public boolean menuButtonCol(){
    int temp = 0;
    if(mouseY > 450 && mouseY < 600)
    temp++;
    if(mouseX > 300 && mouseX < 550)
    temp++;
    if(temp == 2)
    return true;
    else return false;
  }
  public boolean startButtonCol(){
    int temp = 0;
    if(mouseY > 450  && mouseY < 600)
    temp++;
    if(mouseX > 150 && mouseX < 450)
    temp++;
    if(temp == 2)
    return true;
    else return false;
  }
  
  void display(Apple fruit){
    if(gameover() == true){
      fruit.y = 0 - fruit.rl-1;
      image(gameoverScreen,CENTER,height/2-150);
      if(playButtonCol() == true)
      image(playAgainButton,50,450);
      if(menuButtonCol() == true)
      image(menuButton,300,450);
    }else{
      if(lives == 3){
      image(heart, width-52, 10);
      image(heart, width-110, 10);
      image(heart, width-170, 10);
      }
      if(lives == 2){
      image(heart, width-50, 10);
      image(heart, width-110, 10);
      }
      if(lives == 1)
      image(heart, width-50, 10);
    }
  }
}