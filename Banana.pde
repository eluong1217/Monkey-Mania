public class Banana extends Apple{
   public Banana(){
     super();
     vy = 4;
     s = 200;
   }
   void display(){
    image(bananaItem,x,y);
  }
  void gravity(){
    y +=vy;
  }
}
