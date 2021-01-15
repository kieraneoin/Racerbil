class Algorithm {

  CarSystem carSystem;

  Algorithm(CarSystem carSystem) {

    this.carSystem = carSystem;
  }

  void fjernLort() {

   for (int i = 0; i <carSystem.CarControllerList.size()-1; ++i) {
      CarController carCon = carSystem.CarControllerList.get(i);
      float Gronlig = carCon.sensorSystem.clockWiseRotationFrameCounter;
      if (10> Gronlig) {
        carSystem.CarControllerList.remove(i);
        i--;
      }
    }
  }

  void LavNyBil(CarController Bilstyring1, CarController Bilstyring2) {

    CarController Styring = new CarController();
    NeuralNetwork NyBil = Styring.hjerne;


    for (int i = 0; i<NyBil.weights.length -1; ++i) {
      if (Math.random() > .10) {
        NyBil.weights[i]=Bilstyring1.hjerne.weights[i];
      } else {
        NyBil.weights[i]=Bilstyring2.hjerne.weights[i];
      }
    }
    //float list[] = controller.hjerne.weights[];

    carSystem.CarControllerList.add(Styring);
  }
  
  void FjernDeDaarlige() {
    if (frameCount%300==0) {
      for (int i = carSystem.CarControllerList.size()-1; i >= 0; i--) {
        SensorSystem s = carSystem.CarControllerList.get(i).sensorSystem;
        if (s.whiteSensorFrameCount > 0) {

          carSystem.CarControllerList.remove(carSystem.CarControllerList.get(i));
        }
      }
    }
  }
  
  
}
