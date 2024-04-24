ArrayList<Sprite> Pumpkins = new ArrayList<Sprite>();
ArrayList<Sprite> bosses = new ArrayList<Sprite>();
ArrayList<Sprite> Orbs = new ArrayList<Sprite>();
ArrayList<Sprite> Enemies = new ArrayList<Sprite>();
Sprite End;
class gameworld{
  ArrayList<Sprite> platforms = new ArrayList<Sprite>();
  ArrayList<Sprite> bricks = new ArrayList<Sprite>();
  ArrayList<Sprite> ladders = new  ArrayList<Sprite>();
  ArrayList<Sprite> Doughnuts = new  ArrayList<Sprite>();
  PImage ground1, grass1, grass2, grass3, grass4, grass5, grass6,grass7,ground8,ground9,grass10,ladder11,tree12,
  tree13,tree14,leaf1,leaf2,leaf3,leaf4,leaf5,leaf6,leaf7,leaf8,leaf9,flower1, flower2, flower3,flower4,ladder12,
  ladder13,ladder14,ladder15,ladder16, ground10, ground11,ground12,ground13,ground14, ground15,candytr1,candytr2,
  candytr3,candytr4,candytr5,candytr6,candytr7,candytr8,candytr9,candytr10,candytr11,candytr12,candytr13,candy1,
  candy2,candy3,candy4,candy5,candy6,candytr14,candytr15,candytr16,candytr17,candytr18,candytr19,candytr20,candytr21,candytr22,flag;
  PImage[] Doughnut = new PImage[9];
  PImage brick,ladder;
  String path;
  String file_name;
  boolean isReady = false;
  gameworld(){
    randomSeed(SEED);
    ground1 = loadImage("./data/map/peaceful night/image48.png");
    grass2 = loadImage("./data/map/peaceful night/image47.png");
    grass3 = loadImage("./data/map/peaceful night/image24.png");
    grass4 = loadImage("./data/map/peaceful night/image26.png");
    grass5 = loadImage("./data/map/peaceful night/image49.png");
    grass6 = loadImage("./data/map/peaceful night/image25.png");
    grass7 = loadImage("./data/map/peaceful night/image116.png");
    ground8 = loadImage("./data/map/peaceful night/image139.png");
    ground9 = loadImage("./data/map/peaceful night/image140.png");
    grass10 = loadImage("./data/map/peaceful night/image117.png");
    ladder11 = loadImage("./data/map/peaceful night/image101.png");
    tree12 = loadImage("./data/map/peaceful night/image170.png");
    tree13 = loadImage("./data/map/peaceful night/image169.png");
    tree14 = loadImage("./data/map/peaceful night/image146.png");
    leaf7 = loadImage("./data/map/peaceful night/image120.png");
    leaf8 = loadImage("./data/map/peaceful night/image121.png");
    leaf9 = loadImage("./data/map/peaceful night/image122.png");
    leaf6 = loadImage("./data/map/peaceful night/image143.png");
    leaf5 = loadImage("./data/map/peaceful night/image144.png");
    leaf4 = loadImage("./data/map/peaceful night/image145.png");
    leaf1 = loadImage("./data/map/peaceful night/image166.png");
    leaf2 = loadImage("./data/map/peaceful night/image167.png");
    leaf3 = loadImage("./data/map/peaceful night/image168.png");
    flower1 = loadImage("./data/map/peaceful night/image28.png");
    flower2 = loadImage("./data/map/peaceful night/image29.png");
    flower3 = loadImage("./data/map/peaceful night/image32.png");
    flower4 = loadImage("./data/map/peaceful night/image34.png");
    ladder12 = loadImage("./data/map/peaceful night/image78.png");
    ladder13 = loadImage("./data/map/peaceful night/image79.png");
    ladder14 = loadImage("./data/map/peaceful night/image80.png");
    ladder15 = loadImage("./data/map/peaceful night/image81.png");
    ladder16 = loadImage("./data/map/peaceful night/image103.png");
    ground10 = loadImage("./data/map/peaceful night/image70.png");
    ground11 = loadImage("./data/map/peaceful night/image71.png");
    ground12 = loadImage("./data/map/peaceful night/image72.png");
    ground13 = loadImage("./data/map/peaceful night/image162.png");
    ground14 = loadImage("./data/map/peaceful night/image93.png");
    ground15 = loadImage("./data/map/peaceful night/image94.png");
    candytr1 = loadImage("./data/map/candy/image165.png");
    candytr2 = loadImage("./data/map/candy/image166.png");
    candytr3 = loadImage("./data/map/candy/image167.png");
    candytr4 = loadImage("./data/map/candy/image168.png");
    candytr5 = loadImage("./data/map/candy/image175.png");
    candytr6 = loadImage("./data/map/candy/image176.png");
    candytr7 = loadImage("./data/map/candy/image177.png");
    candytr8 = loadImage("./data/map/candy/image178.png");
    candytr9 = loadImage("./data/map/candy/image185.png");
    candytr10 = loadImage("./data/map/candy/image186.png");
    candytr11 = loadImage("./data/map/candy/image187.png");
    candytr12 = loadImage("./data/map/candy/image188.png");
    candytr13 = loadImage("./data/map/candy/image197.png");
    candy1 = loadImage("./data/map/candy/image163.png");
    candy2 = loadImage("./data/map/candy/image164.png");
    candy3 = loadImage("./data/map/candy/image173.png");
    candy4 = loadImage("./data/map/candy/image174.png");
    candy5 = loadImage("./data/map/candy/image183.png");
    candy6 = loadImage("./data/map/candy/image184.png");
    candytr14 = loadImage("./data/map/candy/image110.png");
    candytr15 = loadImage("./data/map/candy/image111.png");
    candytr16 = loadImage("./data/map/candy/image112.png");
    candytr17 = loadImage("./data/map/candy/image120.png");
    candytr18 = loadImage("./data/map/candy/image121.png");
    candytr19 = loadImage("./data/map/candy/image122.png");
    candytr20 = loadImage("./data/map/candy/image130.png");
    candytr21 = loadImage("./data/map/candy/image131.png");
    candytr22 = loadImage("./data/map/candy/image132.png");
    flag = loadImage("./data/map/flag.png");
    for(int i = 0; i<Doughnut.length; i++){
      Doughnut[i] = loadImage("./data/map/candy/Doughnut/image"+i+".png");
    }
  }
  void restart(){
    Pumpkins = new ArrayList<Sprite>();
    bosses = new ArrayList<Sprite>();
    platforms = new ArrayList<Sprite>();
    bricks = new ArrayList<Sprite>();
    ladders = new  ArrayList<Sprite>();
    Doughnuts = new  ArrayList<Sprite>();
    Orbs = new ArrayList<Sprite>();
    Enemies = new ArrayList<Sprite>();
    isReady = false;
    this.createMap();
  }
  void createMap() {
    if (difficulty.equals("Easy")){
     path = "./data/mapEasy.csv";
    }
    else{
      path = "./data/mapHard.csv";
    }
    String[] lines = loadStrings(path);
    for (int row = 0; row < lines.length; row++) {
      String[] values = split(lines[row], ",");
      for (int col = 0; col < values.length; col++) {
        switch (values[col]) {
          case "1": {
              createground(ground1, col, row, true);
              break;
          }
          case "2": {
              createground(grass2, col, row, true);
              break;
          }
          case "3": {
              createground(grass3, col, row, true);
              break;
          }
          case "4": {
              createground(grass4, col, row, true);
              break;
          }
          case "5": {
              createground(grass5, col, row, true);
              break;
          }
          case "6": {
              createground(grass6, col, row, true);
              break;
          }
          case "7": {
              createground(grass7, col, row, true);
              break;
          }
          case "8": {
              createground(ground8, col, row, true);
              break;
          }
          case "9": {
              createground(ground9, col, row, true);
              break;
          }
          case "10": {
              createground(grass10, col, row, true);
              break;
          }
          case "11": {
              createladder(ladder11, col, row);
              break;
          }
         case "12": {
              createground(tree12, col, row, false);
              break;
          }
          case "13": {
              createground(tree13, col, row, false);
              break;
          }
          case "14": {
              createground(tree14, col, row, false);
              break;
          }
          case "15": {
              createground(leaf1, col, row, false);
              break;
          }
          case "16": {
              createground(leaf2, col, row, false);
              break;
          }
          case "17": {
              createground(leaf3, col, row, false);
              break;
          }
          case "18": {
              createground(leaf4, col, row, false);
              break;
          }
          case "19": {
              createground(leaf5, col, row, false);
              break;
          }
          case "20": {
              createground(leaf6, col, row, false);
              break;
          }
          case "21": {
              createground(leaf7, col, row, false);
              break;
          }
          case "22": {
              createground(leaf8, col, row, false);
              break;
          }
          case "23": {
              createground(leaf9, col, row, false);
              break;
          }
          case "24": {
              createground(flower1, col, row, false);
              break;
          }
          case "25": {
              createground(flower2, col, row, false);
              break;
          }
          case "26": {
              createground(flower3, col, row, false);
              break;
          }
          case "27": {
              createground(flower4, col, row, false);
              break;
          }
          case "28": {
              createground(ladder12, col, row, true);
              break;
          }
          case "29": {
              createground(ladder13, col, row, true);
              break;
          }
          case "30": {
              createground(ladder14, col, row, true);
              break;
          }
          case "31": {
              createground(ground10, col, row, true);
              break;
          }
          case "32": {
              createground(ground11, col, row, true);
              break;
          }
          case "33": {
              createground(ground12, col, row, true);
              break;
          }
          case "34": {
              createground(ground13, col, row, true);
              break;
          }
          case "35": {
              createground(ladder15, col, row, true);
              break;
          }
          case "36": {
              createground(ladder16, col, row, false);
              break;
          }
          case "37": {
              createground(ground14, col, row, true);
              break;
          }
          case "38": {
              createground(ground15, col, row, true);
              break;
          }
          case "P": {
              createPk(col, row);
              break;
          }
          case "b1": {
              createBoss(col, row, "b1");
              break;
          }
          case "b2": {
              createBoss(col, row, "b2");
              break;
          }
          case "b3": {
              createBoss(col, row, "b3");
              break;
          }
          case "d": {
              createDoughnut(Doughnut[int(random(0,9))],col, row);
              break;
          }
          case "c1": {
              createground(candytr1,col, row, false);
              break;
          }
          case "c2": {
              createground(candytr2,col, row, false);
              break;
          }
          case "c3": {
              createground(candytr3,col, row, false);
              break;
          }
          case "c4": {
              createground(candytr4,col, row, false);
              break;
          }
          case "c5": {
              createground(candytr5,col, row, false);
              break;
          }
          case "c6": {
              createground(candytr6,col, row, false);
              break;
          }
          case "c7": {
              createground(candytr7,col, row, false);
              break;
          }
          case "c8": {
              createground(candytr8,col, row, false);
              break;
          }
          case "c9": {
              createground(candytr9,col, row, false);
              break;
          }
          case "c10": {
              createground(candytr10,col, row, false);
              break;
          }
          case "c11": {
              createground(candytr11,col, row, false);
              break;
          }
          case "c12": {
              createground(candytr12,col, row, false);
              break;
          }
          case "c13": {
              createground(candytr13,col, row, false);
              break;
          }
          case "c14": {
              createground(candy1,col, row, false);
              break;
          }
          case "c15": {
              createground(candy2,col, row, false);
              break;
          }
          case "c16": {
              createground(candy3,col, row, false);
              break;
          }
          case "c17": {
              createground(candy4,col, row, false);
              break;
          }
          case "c18": {
              createground(candy5,col, row, false);
              break;
          }
          case "c19": {
              createground(candy6,col, row, false);
              break;
          }
          case "c20": {
              createground(candytr14,col, row, false);
              break;
          }
          case "c21": {
              createground(candytr15,col, row, false);
              break;
          }
          case "c22": {
              createground(candytr16,col, row, false);
              break;
          }
          case "c23": {
              createground(candytr17,col, row, false);
              break;
          }
          case "c24": {
              createground(candytr18,col, row, false);
              break;
          }
          case "c25": {
              createground(candytr19,col, row, false);
              break;
          }
          case "c26": {
              createground(candytr20,col, row, false);
              break;
          }
          case "c27": {
              createground(candytr21,col, row, false);
              break;
          }
          case "c28": {
              createground(candytr22,col, row, false);
              break;
          }
          case "flag": {
              createground(flag,col, row, false);
              break;
          }
          case "o": {
              createOrb(col, row);
              break;
          }
          case "w": {
              CreateWhitch(col, row);
              break;
          }
          case "player":{
            player = new Player(loadImage("./data/Player/stand1.png"), SPRITE_SIZE_X,SPRITE_SIZE_Y,WALL_SIZE_X / 2 + col * WALL_SIZE_X, WALL_SIZE_Y / 2 + row * WALL_SIZE_Y);
            break;
          }
          case "f": {
              CreateEnd(col, row);
              break;
          }
          default:{
            break;
          }
        }
      }
    }

    isReady = true;
  }
  
  void display(){
     for (Sprite platform : platforms) {
       platform.display();
     }
     for (Sprite brick : bricks) {
       brick.display();
     }
     for (Sprite ladder : ladders) {
       ladder.display();
     }
     for (Sprite doughnut : Doughnuts){
       doughnut.display();
     }
  }
  
  void createground(PImage img, int col, int row, boolean ground){
      Sprite s = new Sprite(img, WALL_SIZE_X, WALL_SIZE_Y);
      s.setCenter_x((float) (WALL_SIZE_X / 2 + col * WALL_SIZE_X));
      s.setCenter_y((float) (WALL_SIZE_Y / 2 + row * WALL_SIZE_Y));
      if (ground)
        platforms.add(s);
      else
        bricks.add(s);
  }
  void createladder(PImage img, int col, int row){
      Sprite s = new Sprite(img, WALL_SIZE_X, WALL_SIZE_Y);
      s.setCenter_x((float) (WALL_SIZE_X / 2 + col * WALL_SIZE_X));
      s.setCenter_y((float) (WALL_SIZE_Y / 2 + row * WALL_SIZE_Y));
      ladders.add(s);
  }
   void createDoughnut(PImage img, int col, int row){
      Sprite s = new Sprite(img, WALL_SIZE_X, WALL_SIZE_Y);
      s.setCenter_x((float) (WALL_SIZE_X / 2 + col * WALL_SIZE_X));
      s.setCenter_y((float) (WALL_SIZE_Y / 2 + row * WALL_SIZE_Y));
      Doughnuts.add(s);
  }
  
  void createPk(int col, int row){
    Pumpkin pumpkin = new Pumpkin(loadImage("./data/pk/pumpkin1.png"), SPRITE_SIZE_X, SPRITE_SIZE_Y, WALL_SIZE_X / 2 + col * WALL_SIZE_X, WALL_SIZE_Y / 2 + row * WALL_SIZE_Y);  
    Pumpkins.add(pumpkin); 
  }
  void createOrb(int col, int row){
    Orb orb = new Orb(loadImage("./data/PowerUpOrb/powerOrb1.png"), SPRITE_SIZE_X, SPRITE_SIZE_Y, WALL_SIZE_X / 2 + col * WALL_SIZE_X, WALL_SIZE_Y / 2 + row * WALL_SIZE_Y);  
    Orbs.add(orb); 
  }
  
  void createBoss(int col, int row, String bossNum){
    if (bossNum == "b1"){
      RedSprite boss = new RedSprite(loadImage("./data/RedSprite/stand1.png"),BOSS1_SIZE_X, BOSS1_SIZE_Y,  
      WALL_SIZE_X / 2 + col * WALL_SIZE_X, WALL_SIZE_Y / 2 + row * WALL_SIZE_Y,1,BOSS1_CHASE_DIS,BOSS1_SPEED);
      bosses.add(boss);
    }
    if (bossNum == "b2"){
      RedSmile boss = new RedSmile(loadImage("./data/RedSmile/stand1.png"),BOSS2_SIZE_X, BOSS2_SIZE_Y,  
      WALL_SIZE_X / 2 + col * WALL_SIZE_X, WALL_SIZE_Y / 2 + row * WALL_SIZE_Y,1,BOSS2_CHASE_DIS,BOSS2_SPEED);
      bosses.add(boss);
    }
    if (bossNum == "b3"){
      PumpkinMonster boss = new PumpkinMonster(loadImage("./data/pk/pumpkin1.png"),SPRITE_SIZE_X, SPRITE_SIZE_Y,  
      WALL_SIZE_X / 2 + col * WALL_SIZE_X, WALL_SIZE_Y / 2 + row * WALL_SIZE_Y,1,BOSS2_CHASE_DIS,BOSS2_SPEED,PUMKINMONSTER_FIND_DIS);
      bosses.add(boss);
    }
  }
  
  void CreateWhitch(int col, int row){
    float bLeft = col * (float) ENEMY_SIZE_X;
    float bRight = bLeft + 4 * (float) ENEMY_SIZE_Y;
    Enemy w = new Witch(loadImage("./data/whitch/stand1.png"),ENEMY_SIZE_X,ENEMY_SIZE_Y, WALL_SIZE_X / 2 + col * WALL_SIZE_X, WALL_SIZE_Y / 2 + row * WALL_SIZE_Y,1,
    ENEMY_CHASE_DIS, ENEMY_SPEED ,bLeft, bRight);
    w.center_x = ((float) (SPRITE_SIZE_X / 2 + col * SPRITE_SIZE_X));
    w.center_y = ((float) (SPRITE_SIZE_Y / 2 + row * SPRITE_SIZE_Y));
    Enemies.add(w);
  }
  void CreateEnd(int col, int row){
    End = new Sprite(loadImage("./data/map/peaceful night/image108.png"), WALL_SIZE_X, WALL_SIZE_Y);
    End.center_x = ((float) (SPRITE_SIZE_X / 2 + col * SPRITE_SIZE_X));
    End.center_y = ((float) (SPRITE_SIZE_Y / 2 + row * SPRITE_SIZE_Y));
  }
  
}
