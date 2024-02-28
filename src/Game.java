import processing.core.PApplet;

public class Game extends PApplet {

  private final static float MOVE_SPEED = 5;
  private final static float JUMP_SPEED = 14;
  private final static double GRAVITY = 0.6;

  public static void main(String[] args) {
    PApplet.main("Game");
  }

  public void settings() {
    size(800, 600);
  }

  public void setup() {
    imageMode(CENTER);
  }

  public void draw() {
    background(255);
  }
}