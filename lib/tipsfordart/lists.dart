void main(){
  //fixedLength list
  var myList = List.filled(6, 4, growable: false);

  myList = [11,22,33,];
  print(myList);
  print(myList[2]);

//growable List
  List<String> growable = ["Yangon","Mogok","Mandalay"];
  print(growable);
  growable.addAll(["Taung kyi","Sagaing"]);
  print(growable);
  growable.add("Me");
  print(growable);
  print(growable.reversed);
  growable.removeAt(3);
  print(growable);
  growable.insert(3, "Mone ywa");
  print(growable);
  print(growable.length);
  print(growable[3]);

//Pre populate
  List<int> cityList = [1,2,3,4,5,6,7,8,9];
  print(cityList.toString());

//using if to pre populate growable
  bool isYangon = true;
  List<String> townList = ["Yangon",if(!isYangon)"Mogok"];
  print(townList);

//myself
  bool isMandalay;
  List<String> Mandalay = ["Sagainng",if(isMandalay=true)"Min Mu"];
  print(Mandalay);
//using for loop

  var numbers = [2,3];
  List<int> city = [for(var num in numbers) num * 2];
  print(city.toString());

}