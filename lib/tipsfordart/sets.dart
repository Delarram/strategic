void main(){
  //creating a set
  Set<int> townSet = {1,2,3,4,5,6,};
  print(townSet);

  //creating duplicate
  Set<int> duplicateSet = {1,2,3,4,5,5,5,7};
  print(duplicateSet);

  //contain
  print(townSet.contains(1));

  //add
  townSet.addAll({1,2,3,4,5,6,9,6,7});
  print(townSet);

  //remove
  townSet.removeAll({3,2});
  print(townSet);

  //adding list to a set//it will only take one value of duplicate
  List<int> numberList = [1,23,54,56,6,];
  townSet.addAll(numberList);
  print(townSet);

  //special function of sets
  // intersection
  Set<int> secondList = {11,12,15,56};
  print(townSet.intersection(secondList));

  //will take all value but if duplicate only one will its take
  print(townSet.union(secondList));

}