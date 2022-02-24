enum CarType {saloon, suv, hatchback, fastback, coupe, universal}
enum CarClass {standard, business, premium}
enum CarColor {red, yellow, green, blue, black, white, grey}
enum CarTransmission {manual, automatic}


abstract class Car {
  factory Car(CarClass carClass) {
    switch(carClass) {
      case CarClass.standard: return StandardCar();
      case CarClass.business: return BusinessCar();
      case CarClass.premium: return PremiumCar();
    }
  }
}

class StandardCar implements Car {
  CarType type;
  CarClass carClass;
  CarColor color;
  CarTransmission transmission;
  int wheelsRadius;

  StandardCar({
    this.type = CarType.saloon,
    this.carClass = CarClass.standard,
    this.color = CarColor.white,
    this.transmission = CarTransmission.manual,
    this.wheelsRadius = 15
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';;
  }
}

class BusinessCar implements Car {
  CarType type;
  CarClass carClass;
  CarColor color;
  CarTransmission transmission;
  int wheelsRadius;

  BusinessCar({
    this.type = CarType.suv,
    this.carClass = CarClass.business,
    this.color = CarColor.grey,
    this.transmission = CarTransmission.automatic,
    this.wheelsRadius = 18
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';;
  }
}

class PremiumCar implements Car {
  CarType type;
  CarClass carClass;
  CarColor color;
  CarTransmission transmission;
  int wheelsRadius;

  PremiumCar({
    this.type = CarType.coupe,
    this.carClass = CarClass.premium,
    this.color = CarColor.black,
    this.transmission = CarTransmission.automatic,
    this.wheelsRadius = 21
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';;
  }
}