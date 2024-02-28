import processing.core.PApplet;
import processing.core.PImage;

public class Sprite {
  private PImage image;
  private float cordX;
  private float cordY;
  private float changeX;
  private float changeY;
  private float width;
  private float height;


  public Sprite(String name, double scale, float cordX, float cordY, PApplet parent) {
    this.image = parent.loadImage(name);
    this.width = (float) (image.width * scale);
    this.height = (float) (image.height * scale);
    this.cordX = cordX;
    this.cordY = cordY;
    this.changeX = 0;
    this.changeY = 0;
  }

  public Sprite(PImage image, double scale, float cordX, float cordY) {
    this.image = image;
    this.width = (float) (image.width * scale);
    this.height = (float) (image.height * scale);
    this.cordX = cordX;
    this.cordY = cordY;
    this.changeX = 0;
    this.changeY = 0;
  }

  public void display(PApplet parent) {
    parent.image(this.image, cordX, cordY, width, height);
  }

  public void update() {
    // Add your update logic here if needed
    cordX += changeX;
    cordY += changeY;
  }

  public float getRight() {
    return cordX + width / 2;
  }

  public float getLeft() {
    return cordX - width / 2;
  }

  public float getTop() {
    return cordY - height / 2;
  }

  public float getBottom() {
    return cordY + height / 2;
  }

  public void setRight(float right) {
    cordX = right - width / 2;
  }

  public void setLeft(float left) {
    cordX = left + width / 2;
  }

  public void setTop(float top) {
    cordY = top + height / 2;
  }

  public void setBottom(float bottom) {
    cordY = bottom - height / 2;
  }

  public float getCordX() {
    return cordX;
  }

  public void setCordX(float cordX) {
    this.cordX = cordX;
  }

  public float getCordY() {
    return cordY;
  }

  public void setCordY(float cordY) {
    this.cordY = cordY;
  }

  public float getChangeX() {
    return changeX;
  }

  public void setChangeX(float changeX) {
    this.changeX = changeX;
  }

  public float getChangeY() {
    return changeY;
  }

  public void setChangeY(float changeY) {
    this.changeY = changeY;
  }

  public PImage getImage() {
    return image;
  }

  public void setImage(PImage image) {
    this.image = image;
  }
}
