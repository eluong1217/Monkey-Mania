public class Orange extends Apple{
  float vx;
  public Orange(){
     super();
     vx = 5;
     vy = 4;
     s = 500;
   }
   void display(){
    image(orangeItem,x,y);
  }
  void gravity(Apple fruit){
    y += vy;
    x += vx;
    if(fruit.x < 0)
       vx = -vx;
     if(fruit.x + rw > width)
       vx = -vx;
    }
   }