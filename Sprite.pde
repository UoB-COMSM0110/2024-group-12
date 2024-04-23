public class Sprite{
  PImage image;
  float center_x, center_y;
  float change_x, change_y;
  int w, h;
  int size_x,size_y;
  boolean faceto = false;
  boolean fly = false;
  public Sprite(String filename, int size_x, int size_y, float x, float y) {
   image = loadImage(filename);
    w = size_x;
    h = size_y;
   center_x = x;
   center_y = y;
   change_x = 0;
   change_y = 0;
  }
  
  public Sprite(String filename, int size_x, int size_y) {
    this(filename, size_x, size_y, 0, 0);
  }
  
  public Sprite(PImage img, int size_x, int size_y, float x, float y) {
    image = img;
    w = size_x;
    h = size_y;
    center_x = x;
    center_y = y;
    change_x = 0;
    change_y = 0;

  }
  
  public Sprite(PImage img, int size_x, int size_y) {
    image = img;
    w = size_x;
    h = size_y;
    center_x = 0;
    center_y = 0;
    change_x = 0;
    change_y = 0;

  }
  
  public void display() {
    pushMatrix();
    image.resize(w,h);
    translate(center_x, center_y);
    if (change_x < 0 || (change_x == 0 && faceto == true)) {
      scale(-1, 1);
      faceto = true;
    }
    if ((change_x > 0) || (change_x == 0 && faceto == false)) {
      scale(1, 1);
      faceto = false;
    }

    image(image, 0, 0);
    popMatrix(); 
  }
  
  public void update() {

     center_x += change_x;
     center_y += change_y;
  }
  
  void setCenter_x(float x) {
    center_x = x;
  }
  
  float getCenter_x() {
    return center_x;
  }
  
  void setCenter_y(float y) {
    center_y = y;
  }
  
  float getCenter_y() {
    return center_y;
  }
  
  void setLeft(float left) {
    center_x = left + w / 2;
  }
  
  float getLeft() {
    return center_x - w / 2;
  }
  
  void setRight(float right) {
    center_x = right - w / 2;
  }
  
  float getRight(){
    return center_x + w/2 ;
  }
  
  void setTop(float top) {
    center_y = top + h / 2;
  }
  
  float getTop() {
    return center_y - h/2;
  }
  
  void setBottom(float bottom) {
    center_y = bottom - h / 2;
  }
  
  float getBottom() {
    return center_y + h / 2;
  }
  
  float getChangeX() {
    return change_x;
  }

  void setChangeX(float cx) {
    change_x = cx;
  }

  float getChangeY() {
    return change_y;
  }

  void setChangeY(float cy) {
    change_y = cy;
  }

  public PImage getImage() {
    return image;
  }

  public void setImage(PImage image) {
    this.image = image;
  }
}
