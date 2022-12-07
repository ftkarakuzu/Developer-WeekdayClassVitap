public class NewCar {
    public integer currentSpeed = 0;
    public string carType = ''; //definition
    public string carName; //declaration
    public void startCar(string carType, string carName){
         system.debug(carType);
         system.debug(carName);
    }
    public void Accelerate(integer x){
        currentSpeed  += x;
        system.debug(currentSpeed);
    }
    public void Brake(integer y){
        currentSpeed -= y;
        system.debug(currentSpeed);
    }
    public void stopCar(){
        currentSpeed = 0;
        system.debug(currentSpeed);
    }
    public void checkSpeed(){
        if (currentSpeed > 0 && currentSpeed <= 30){
            system.debug('City Mode');
        } else  if (currentSpeed > 30 && currentSpeed <=60){
            system.debug('Economy Mode');
        } else{
            system.debug('Sports Mode');
        }
    }
}
