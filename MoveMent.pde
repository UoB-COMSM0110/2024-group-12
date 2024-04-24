void keyPressed() {
  //if (pageNum == 3) { // In game
    // AnimatedSprite 1 controls
    if (keyCode == RIGHT){
      player.change_x = MOVE_SPEED;
    }
    if (keyCode == LEFT){
      player.change_x = -MOVE_SPEED;
    } 
    if (keyCode == UP && (isOnGround(player, gw.platforms) || isOnLadder(player,gw.ladders))){
      player.change_y = -JUMP_SPEED;
    } 
    if (keyCode == UP && player.fly){
      player.change_y = -JUMP_SPEED;
    }
    if (keyCode == DOWN && (isOnLadder(player,gw.ladders) || player.fly)){
      player.change_y = MOVE_SPEED;
    }
   
  //}
    if (!gameStarted && !showLeaderboard && !back) {
    if (keyCode >= 65 && keyCode <= 90 || keyCode >= 97 && keyCode <= 122 || keyCode == 32) {
      playerName += key;
    } else if (keyCode == BACKSPACE && playerName.length() > 0) {
      playerName = playerName.substring(0, playerName.length() - 1);
    }
  }
}
void keyReleased() {
  //if (pageNum == 3) {
    // AnimatedSprite 1 controls
    if (keyCode == RIGHT || keyCode == LEFT) {
        player.change_x = 0;
      } else if (keyCode == UP || keyCode == DOWN) {
        player.change_y = 0;
      }
  //}
 }
