void main(){
//declare
  Map<int,String> nameMap = {1 : "Yangon",2 : "Mogok",3 : "Mandalay"};
  print(nameMap);

  //reading data
  print(nameMap[1]);
  print(nameMap[3]);
  print(nameMap[2]);

  nameMap[4] = "Sagaing";
  print(nameMap);

  nameMap[1] = "Mone ywa";
  print(nameMap);

  print(nameMap.length);
  //remove exact place
  nameMap.removeWhere((key, value) => value.startsWith('S'));
  print(nameMap);

  nameMap.remove(2);
  print(nameMap);

  // attribute
  print(nameMap.isEmpty);
  print(nameMap.isNotEmpty);
  print(nameMap.length);
}