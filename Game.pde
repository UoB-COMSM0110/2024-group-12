import java.util.Collections;

final static float MOVE_SPEED = 5;
final static float JUMP_SPEED = 14;
final static float SPRITE_SCALE = 50.0 / 30.0;
final static float SPRITE_SIZE = 50.0;


PImage grave;
Sprite player;

ArrayList<Sprite> platforms;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  
  grave = loadImage("./data/grave.png");
  platforms = new ArrayList<>();
  player = new Sprite("./data/player1.png", SPRITE_SCALE, 100.0, 100.0);
  
  createPlatforms("./data/map.csv");
}

void draw() {
  background(255);
  
  for (Sprite platform : platforms) {
    platform.display();
  }
  
  player.display();
  player.update();
}

void createPlatforms(String file_name) {
  
  String[] lines = loadStrings(file_name);

  for (int row = 0; row < lines.length; row++) {
    String[] values = split(lines[row], ",");
    for (int col = 0; col < values.length; col++) {
      switch (values[col]) {
        case "1": {
            Sprite s = new Sprite(grave, SPRITE_SCALE);
            s.setCenter_x((float) (SPRITE_SIZE / 2 + col * SPRITE_SIZE));
            s.setCenter_y((float) (SPRITE_SIZE / 2 + row * SPRITE_SIZE));
            platforms.add(s);
        }
      }
    }
  }
}

void keyPressed() {
  switch (keyCode) {
    case RIGHT:
      player.setChangeX(player.getChangeX() + MOVE_SPEED);
      break;
    case LEFT:
      player.setChangeX(player.getChangeX() - MOVE_SPEED);
      break;
    case UP:
        player.setChangeY(player.getChangeY() - MOVE_SPEED);
        break;
    case DOWN:
      player.setChangeY(player.getChangeY() + MOVE_SPEED);
      break;
  }
}

public void keyReleased() {
  player.setChangeX(0);
  player.setChangeY(0);
}
