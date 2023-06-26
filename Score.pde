public class Score {
  int score, streak, m;
  public Score() {
    score = 0;
    streak = 0;
    m = 1;
  }

  void display() {
    textSize(32);
    streak();
    text(score, width/2, 32);
  }
  void streak() {
    if (streak >= 5) {
      m = streak/5+1;
      fill(random(255), random(255), random(255));
    } else {
      m = 1;
      fill(255);
    }
  }
  void increaseScore(int s) {
    score+= s*m;
  }
} 
