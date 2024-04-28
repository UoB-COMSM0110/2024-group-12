boolean collisionTest(Sprite c1, Sprite c2){
  boolean checkX1 = c1.getLeft()+5 >= c2.getRight();
  boolean checkX2 = c1.getRight()-5 <= c2.getLeft();
  boolean checkY1 = c1.getBottom() <= c2.getTop();
  boolean checkY2 = c1.getTop()+5 >= c2.getBottom();
  if (checkX1 || checkX2 || checkY1 || checkY2) {
    return false;
  } else {
    return true;
  }
}
boolean collisionTest_X(Sprite c1, Sprite c2){
  boolean checkX1 = c1.getLeft()+5 >= c2.getRight();
  boolean checkX2 = c1.getRight()-5 <= c2.getLeft();
  if (checkX1 || checkX2) {
    return false;
  } else {
    return true;
  }
}
boolean collisionTest_Y(Sprite c1, Sprite c2){
  boolean checkY1 = c1.getBottom() <= c2.getTop();
  boolean checkY2 = c1.getTop()+5 >= c2.getBottom();
  if (checkY1 || checkY2) {
    return false;
  } else {
    return true;
  }
}

public ArrayList<Sprite> checkCollisionList(Sprite c, ArrayList<Sprite> list) {
  ArrayList<Sprite> listCollision = new ArrayList<Sprite>();
  for (Sprite element: list) {
    if (collisionTest(c, element)) {
      listCollision.add(element);
    }
  }
  return listCollision;
}
public ArrayList<Sprite> checkCollisionList_X(Sprite c, ArrayList<Sprite> list) {
  ArrayList<Sprite> listCollision = new ArrayList<Sprite>();
  for (Sprite element: list) {
    if (collisionTest_X(c, element)) {
      listCollision.add(element);
    }
  }
  return listCollision;
}
public ArrayList<Sprite> checkCollisionList_Y(Sprite c, ArrayList<Sprite> list) {
  ArrayList<Sprite> listCollision = new ArrayList<Sprite>();
  for (Sprite element: list) {
    if (collisionTest_Y(c, element)) {
      listCollision.add(element);
    }
  }
  return listCollision;
}


public boolean isOnGround(Sprite player, ArrayList<Sprite> ground) {
  player.center_y += 5;
  ArrayList<Sprite> list = checkCollisionList(player, ground);
  player.center_y -= 5;
  if (list.size() > 0) {
    return true;
  } else {
    return false;
  }
}

boolean isOnLadder(Sprite player, ArrayList<Sprite> ladders){
  ArrayList<Sprite> list = checkCollisionList(player, ladders);
  if (list.size() > 0) {
    return true;
  } else {
    return false;
  }
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



public void solveCollisions(Sprite player, ArrayList<Sprite> grounds) {
   if (!isOnLadder(player,gw.ladders) && !player.fly){
    player.change_y += GRAVITY;
    player.center_y += player.change_y;
  }
  ArrayList<Sprite> list = checkCollisionList(player, grounds);
  ArrayList<Sprite> y_list = checkCollisionList_Y(player,list);
  if (y_list.size() > 0 ) {
    Sprite collided = y_list.get(0);
    if (player.change_y > 0) {
      player.setBottom(collided.getTop());
    }
    else if (player.change_y < 0) {
      player.setTop(collided.getBottom());
    }
    player.change_y = 0;
  }
  
  player.center_x += player.change_x;
  list = checkCollisionList(player, grounds);
  ArrayList<Sprite> x_list = checkCollisionList_Y(player,list);
  if (x_list.size() > 0) {
    Sprite collided = x_list.get(0);
    if (player.change_x > 0) {
      player.setRight(collided.getLeft());
    }
    else if (player.change_x < 0) {
      player.setLeft(collided.getRight());
    }
  }
}

void displayheart() {
  // Container
  pushMatrix();
  stroke(#D4AF37);
  strokeWeight(4);
  fill(#D4AF37, 25);
  rect(250/6*PlayerSprite_LIVES + view_x-100, 20+view_y, 250/3*PlayerSprite_LIVES, 120, 20);
  popMatrix();
  
  // Score
  pushMatrix();
  translate(view_x, view_y); // Apply view offset
  textAlign(LEFT);
  fill(#FFFFFF);
  textSize(40);
  text("Score: " + String.valueOf(score), 30, 70);
  textAlign(CENTER);
  popMatrix();
  
  // Life
  int heartX = 70;
  for (int i = 0; i < player.lives; i++) {
    image(heart, heartX + view_x, 108 + view_y, 60, 60);
    heartX += 70;
  }
  for (int j = PlayerSprite_LIVES; j > player.lives; j--) {
    image(emptyheart, heartX + view_x, 108 + view_y, 60, 60);
    heartX += 70;
  }  
}



void displayAll(){
    gw.display();
    player.display();
    displayBoss();
    displaypk();
    displayheart();
    displayOrb();
    displayEnemy();
    End.display();
}

void updateAll(){
  player.update();
  player.updateAnimation();
  if(player.lives<=0){
     gameOver = true;
  }
}

void collideAll(){
  solveCollisions(player,gw.platforms);
   if(Pumpkins.size()>0)
  pumpkinCollisions(player,Pumpkins);
  if(player.getCenter_y()>800.0){
    player.lives-=1;
    player.setCenter_x(100);
    player.setCenter_y(100);
  }
  EatDoughnuts();
  if(jump){
    ReinforceJump(jump_ms_start);
  }
  OrbCollisions(player, Orbs);
  if(collisionTest(player, End)){
    gameOver = true;
    score += (difficulty.equalsIgnoreCase("easy")) ? 5 : 7;
  }
}

int jump_ms_start = millis();
void EatDoughnuts() {
  ArrayList<Sprite> DoughnutsList = checkCollisionList(player, gw.Doughnuts);
  if (DoughnutsList.size() > 0) {
    for (Sprite doughnut: DoughnutsList) {
      jump_ms_start =  millis();
      jump = true;
      gw.Doughnuts.remove(doughnut);
    }
  }
}

void ReinforceJump(int start_time){
  int end_time=millis();
  if((end_time - start_time)/1000 >REINFIORCE_TIME){
    jump = false;
    JUMP_SPEED=ORIGIN_JUMP_SPEED;
  }
  else{
    JUMP_SPEED=JUMP_REINFIORCE;
  }
}
