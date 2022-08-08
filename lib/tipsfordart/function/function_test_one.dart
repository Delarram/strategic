String townShip = "Yangon";
int delu = 1;
///sfn
void main() {
  saySomething();
  checkTownShipIsYangon();
  bool isYangon = checkTownshipIsYangon(townShip);
  print(isYangon);
  print("fuckyouPunam====>${query(first: 700000000000000, second: 3)}times");
  checkCityYangon();
}
saySomething() {
  print("Yangon"); //simple function
}

void checkTownShipIsYangon() {
  print(townShip ==
      "Yangonn"); //side effect function we should write less like this function
}

bool checkTownshipIsYangon(String checkLovelyYangon) {
  return checkLovelyYangon == "Yangon"; //pure function
}

int query({required int first, required int second}) {
  return (first * second);
} //parameter function

void checkCityYangon(){
  List city =["hi"];
  if(city=="hi"){
    print(city);
  }else if(city == "hello"){
    print("happy");
  }
}