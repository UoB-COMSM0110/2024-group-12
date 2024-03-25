import java.util.Collections;

final static float MOVE_SPEED = 5;
final static float JUMP_SPEED = 14;
final static float SPRITE_SCALE = 50.0 / 30.0;
final static float SPRITE_SIZE = 50.0;
final static float GRAVITY = .8;
final static float RIGHT_MARGIN = 400;
final static float LEFT_MARGIN = 60;
final static float VERTICAL_MARGIN = 40;
final static float HEIGHT = SPRITE_SIZE * 12;
final static float GROUND_LEVEL = HEIGHT - SPRITE_SIZE;

float view_x = 0;
float view_y = 0;

int score;
int life;

boolean isGameOver;

PImage grave;
PImage pumpkin;
PImage ghost;

Player player;

ArrayList<Sprite> platforms;
ArrayList<Pumpkin> pumpkins;
ArrayList<Enemy> enemies;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  
  grave = loadImage("./data/grave.png");
  pumpkin = loadImage("./data/pumpkin/pumpkin1.png");
  ghost = loadImage("./data/player/GhostWalk/walk1.png");
  score = 0;
  isGameOver = false;
  platforms = new ArrayList<>();
  pumpkins = new ArrayList<>();
  enemies = new ArrayList<>();
  player = new Player(ghost, SPRITE_SCALE);
  createPlatforms("./data/map_test.csv");
}

void draw() {
  background(255);
  textSize(32);
  fill(255, 0, 0);
  text("Life: " + player.lives + "   Pumpkins: " + score, 50, 50);
  
  scroll();
  player.display();
  player.updateAnimation();
  resolvePlatformCollisions(player, platforms);
  pumpkinCollisions();
  checkDeath();

  
  for (Sprite platform : platforms) {
    platform.display();
  }
  
  for (Pumpkin pk : pumpkins) {
    pk.display();
    pk.updateAnimation();
  }
  
  for (Enemy e : enemies) {
    e.display();
    e.update();
    e.updateAnimation();
  }
}


public void GameOver() {
  player.Alive = false;
  score = 0;
  player.onDeath();
}



void checkDeath() {
  boolean collidedEnemy = enemyCollisions();
  boolean fallOffCliff = player.getBottom() > GROUND_LEVEL;
  
  if (collidedEnemy || fallOffCliff) {
    player.lives--;
    if (player.lives == 0) {
      GameOver();
    }
    else {
      player.center_x = 0;
      player.setBottom(0);
    }
  }
  
}

boolean enemyCollisions() {
  return (checkCollisionList(player, enemies).size() > 0);
}


void pumpkinCollisions() {
  ArrayList<Sprite> pumpkinList = checkCollisionList(player, pumpkins);
  if (pumpkinList.size() > 0) {
    for (Sprite pk: pumpkinList) {
      score++;
      pumpkins.remove(pk);
    }
  }
}

// returns true if sprite is one a platform.
public boolean isOnPlatforms(Sprite s, ArrayList<Sprite> walls){
  // move down say 5 pixels to ensure the player is on the platform 
  s.center_y += 5;
  // Check if there are any collisions:
  ArrayList<Sprite> col_list = checkCollisionList(s, walls);
  // if there is a collision then the player is in contact with the a object 
  // restor the sprite to the original position;
  s.center_y += -5;
  // if collisionlist size if not 0, 
  if (col_list.size() > 0) {
    return true;
  }

  return false;
}

void resolvePlatformCollisions(Sprite s, ArrayList<Sprite> walls) {
  s.change_y += GRAVITY;

  // Move in the y-direction and resolve collisions
  s.center_y += s.change_y;
  ArrayList<Sprite> collisionList = checkCollisionList(s, walls);

  if (!collisionList.isEmpty()) {
    Sprite collided = collisionList.get(0);
    if (s.change_y > 0) {
      s.setBottom(collided.getTop());
    }
    else if (s.change_y < 0) {
      s.setTop(collided.getBottom());
    }
    s.change_y = 0;
  }

  // Move in the x-direction and resolve collisions
  s.center_x += s.change_x;
  collisionList = checkCollisionList(s, walls);

  if (!collisionList.isEmpty()) {
    Sprite collided = collisionList.get(0);
    if (s.change_x > 0) {
      s.setRight(collided.getLeft());
    }
    else if (s.change_x < 0) {
      s.setLeft(collided.getRight());
    }
    s.change_x = 0;
  }
}

boolean checkCollision(Sprite s1, Sprite s2) {
  boolean noXOverlap = (s1.getRight() <= s2.getLeft()) || (s1.getLeft() >= s2.getRight());
  boolean noYOverlap = (s1.getBottom() <= s2.getTop()) || (s1.getTop() >= s2.getBottom());
  return !(noXOverlap || noYOverlap); 
}

ArrayList<Sprite> checkCollisionList(Sprite s, ArrayList<? extends Sprite> list) {
  ArrayList<Sprite> collisionList = new ArrayList<>();

  for (Object obj : list) {
    if (obj instanceof Sprite) {
      Sprite p = (Sprite) obj;
      if (checkCollision(s, p)) {
        collisionList.add(p);
      }
    }
  }
  
  return collisionList;
}


void scroll() {
  float right_boundary = view_x + width - RIGHT_MARGIN;
  if (player.getRight() > right_boundary) {
    view_x += player.getRight() - right_boundary;
  }

  float left_boundary = view_x + LEFT_MARGIN;
  if (player.getLeft() < left_boundary) {
    view_x -= left_boundary - player.getLeft();
  }

  float bottom_boundary = view_y + height - VERTICAL_MARGIN;
  if (player.getBottom() > bottom_boundary) {
    view_y += player.getBottom() - bottom_boundary;
  }

  float top_boundary = view_y + VERTICAL_MARGIN;
  if (player.getTop() < top_boundary) {
    view_y -= top_boundary - player.getTop();
  }

  translate(-view_x, -view_y);
}


void createPlatforms(String file_name) {
  
  String[] lines = loadStrings(file_name);

  for (int row = 0; row < lines.length; row++) {
    String[] values = split(lines[row], ",");
    for (int col = 0; col < values.length; col++) {
      switch (values[col]) {
        case "1": {
            Sprite s = new Sprite(grave, SPRITE_SCALE);
            s.center_x = ((float) (SPRITE_SIZE / 2 + col * SPRITE_SIZE));
            s.center_y = ((float) (SPRITE_SIZE / 2 + row * SPRITE_SIZE));
            platforms.add(s);
            break;
        }
        
        case "5": {
          Pumpkin pk = new Pumpkin(pumpkin, SPRITE_SCALE / 2);
          pk.center_x = ((float) (SPRITE_SIZE / 2 + col * SPRITE_SIZE));
          pk.center_y = ((float) (SPRITE_SIZE / 2 + row * SPRITE_SIZE));
          pumpkins.add(pk);
          break;
        }
        
        case "6": {
          float bLeft = col * (float) SPRITE_SIZE;
          float bRight = bLeft + 4 * (float) SPRITE_SIZE;
          Enemy witch = new Witch(loadImage("./data/witch/neutral/witch1.png"), (float) 50 / 72, bLeft, bRight);
          witch.center_x = ((float) (SPRITE_SIZE / 2 + col * SPRITE_SIZE));
          witch.center_y = ((float) (SPRITE_SIZE / 2 + row * SPRITE_SIZE));
          enemies.add(witch);
          break;
        }
        
        case "7": {
          float bLeft = col * (float) SPRITE_SIZE;
          float bRight = bLeft + 4 * (float) SPRITE_SIZE;
          Enemy redSmile = new RedSmile(loadImage("./data/redsmile/redsmile1.png"), (float) 50 / 230, bLeft, bRight);
          redSmile.center_x = ((float) (SPRITE_SIZE / 2 + col * SPRITE_SIZE));
          redSmile.center_y = ((float) (SPRITE_SIZE / 2 + row * SPRITE_SIZE));
          enemies.add(redSmile);
          break;
        }
      }
    }
  }
}

void keyPressed() {
  switch (keyCode) {
    case RIGHT:
      player.change_x = MOVE_SPEED;
      break;
    case LEFT:
      player.change_x = -MOVE_SPEED;
      break;
    case UP:
      if (isOnPlatforms(player, platforms)) {
        player.change_y = -JUMP_SPEED;
      }
      break;
    case DOWN:
      player.change_y = MOVE_SPEED;
      break;
  }
}

public void keyReleased() {
  player.change_x = 0;
  player.change_y = 0;
}
