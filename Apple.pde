public class Apple{
  float x,y,rl,rw,vy;
  int s;
  public Apple(){
    x = random(50,550);
    y = 0;
    rl = 50;
    rw = 50;
    vy = 3;
    s = 100;
  }
  void display(){
    image(appleItem,x,y);
  }
  
  void gravity(Apple f){
    if(lifeboard.gameover() == true)
    f.y = 0 - rl;
    else
    f.y += vy;
  }
  public boolean checkXCol(Apple f){
    if(f.x > monkey.x - monkey.rw/2 && f.x - f.rw < monkey.x + monkey.rw/2)
    return true;
    else
    return false;
  }
  
  public boolean checkYCol(Apple f){
    if(f.y > monkey.y - monkey.rl/2)
    return true;
    else
    return false;
  }
  
void collision(Apple f){
    if(checkXCol(f) == true && checkYCol(f) == true){
    scoreboard.increaseScore(s);
    scoreboard.streak+=1;
    f.x = random(50,550);
    f.y = 0;
    }
    if(y > monkey.y + monkey.rl/2){
    lifeboard.lives-=1;
    scoreboard.streak=0;
    f.x = random(50,550);
    f.y = 0;
    }
  }
}