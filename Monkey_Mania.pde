Monkey monkey;
Score scoreboard;
Lives lifeboard;
Apple [] jungle;
boolean wKey, sKey, aKey, dKey;
PImage monkeyRight, monkeyLeft, appleItem, bananaItem, orangeItem, heart, gameoverScreen, background,playAgainButton,menuButton,start1,start2,monkeyMania;
void setup(){
  size(600,900);
  monkey = new Monkey(width/2,800,100,100,20);
  scoreboard = new Score();
  lifeboard = new Lives();
  jungle = new Apple[3];
  jungle[0] = new Apple();
  jungle[1] = new Banana();
  jungle[2] = new Orange();
  monkeyRight = loadImage("monkeyRight.png");
  monkeyLeft = loadImage("monkeyLeft.png");
  background = loadImage("background.jpg");
  appleItem = loadImage("appleImage.png");
  bananaItem = loadImage("bananaImage.jpg");
  orangeItem = loadImage("orangeImage.png");
  heart = loadImage("lifeHeart.png");
  gameoverScreen = loadImage("gameoverScreen.png");
  playAgainButton = loadImage("playAgain.png");
  menuButton = loadImage("menu.png");
  start1 = loadImage("start.png");
  start2 = loadImage("start2.png");
  monkeyMania = loadImage("monkeyMania.png");
  }
  
void drawGamemode1(){
  background(background);
  image(monkeyMania,50,150); //GameLogo "Monkey Mania"
  image(start1,150,450);
  if(lifeboard.startButtonCol() == true){
    image(start2,150,450);
  }
  if(mousePressed == true && lifeboard.startButtonCol() == true){
    lifeboard.mainMenu = false;
    lifeboard.playAgain();
  }
}

void drawGamemode2(){
    background(background);
    monkey.display();
    monkey.restrictMonkey();
    monkey.move();
    scoreboard.display();
    if(mousePressed == true && lifeboard.playButtonCol() == true && lifeboard.gameover() == true)
      lifeboard.playAgain();
      for(int i = 0; i < jungle.length; i++){
        lifeboard.display(jungle[i]);
        jungle[i].display();
        jungle[i].gravity(jungle[i]);
        jungle[i].collision(jungle[i]);
      }
}
  
void draw(){
   if(lifeboard.mainMenu == true){
     drawGamemode1();
    }
   if(lifeboard.mainMenu == false){
    drawGamemode2();
  }
  if(mousePressed == true && lifeboard.menuButtonCol() == true && lifeboard.gameover() == true)
      lifeboard.mainMenu = true;
}
void keyPressed(){
  if(key == 'a'||keyCode == LEFT)
    aKey = true;
  if(key == 'd'|| keyCode == RIGHT)
    dKey = true;
}

void keyReleased(){
  if(key == 'a'|| keyCode == LEFT )
    aKey = false;
  if(key == 'd'|| keyCode == RIGHT)
    dKey = false;
}
