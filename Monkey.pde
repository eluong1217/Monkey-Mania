public class Monkey{
  float x,y,rl,rw,vx;
  public Monkey(float posx,float posy, float monkeyL, float monkeyW, float monkeySpeed){
    x = posx;
    y = posy;
    rl = monkeyL;
    rw = monkeyW;
    vx = monkeySpeed;
  }
   void display(){
     image(monkeyRight,x,y);
     if(key == 'a' || keyCode == LEFT)
      image(monkeyLeft,x,y);
     if(key == 'd' || keyCode == RIGHT)
      image(monkeyRight,x,y);
   }
   void restrictMonkey(){ //stops Monkey from moving past left and right side//
     if(x < 0){
       x= 0;
       aKey = false;
     }
     if(x > width - rw){
       x = width - rw;
       dKey = false;
     }
     
   }
   void move(){
     if(lifeboard.gameover() == true)
       x = x; // stops Monkey from moving when game is over//
     else{
       if(aKey == true)
       x -= 15;
       if(dKey == true)
       x += 15; 
     }
   }
}
       