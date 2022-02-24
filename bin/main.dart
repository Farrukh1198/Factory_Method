import 'package:factory_methid/car.dart';

void main() {
  Car standardCar = Car(CarClass.standard);
  Car businessCar = Car(CarClass.business);
  Car premiumCar = Car(CarClass.premium);
  print('$standardCar\n' + '---' * 20 + '\n$businessCar\n' + '---' * 20 + '\n$premiumCar');
}
