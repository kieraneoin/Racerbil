class Car {  
  //Bil - indeholder position & hastighed & "tegning"
  PVector vel = new PVector(0, 5);
  PVector pos = new PVector(60, 232);
  
  
    void displayCar() {
    stroke(100);
    fill(100);
    ellipse(pos.x, pos.y, 10, 10);
  }
  
  void turnCar(float turnAngle){
    vel.rotate(turnAngle);
  }
  
  void update() {
    pos.add(vel);
  }
}
