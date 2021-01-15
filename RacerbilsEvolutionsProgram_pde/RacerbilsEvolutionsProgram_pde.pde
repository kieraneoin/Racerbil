//populationSize: Hvor mange "controllere" der genereres, controller = bil & hjerne & sensorer
int       populationSize  = 100;     

//CarSystem: Indholder en population af "controllere" 
CarSystem carSystem       = new CarSystem(populationSize);
Algorithm algo = new Algorithm(carSystem);

//trackImage: RacerBanen , Vejen=sort, Udenfor=hvid, Målstreg= 100%grøn 
PImage    trackImage;

void setup() {
  size(500, 600);
  trackImage = loadImage("track.png");
}

void draw() {
  clear();
  fill(255);
  rect(0,50,1000,1000);
  image(trackImage,0,80);  
  
if (frameCount%300==0) {
  algo.fjernLort();
     for(int i = 0 ; i <10;++i)
       algo.LavNyBil(carSystem.CarControllerList.get((int)random(0,carSystem.CarControllerList.size() -1)),carSystem.CarControllerList.get((int)random(0,carSystem.CarControllerList.size() -1)));
    }
  carSystem.updateAndDisplay();
  algo.FjernDeDaarlige();
  
 
}
