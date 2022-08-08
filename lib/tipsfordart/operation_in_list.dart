void main(){
  //spread operator
  var first = [1,2,3,4,5,6,];
  var second = [7,8,9,10];
  var poudel = [...first,...second];
  print(poudel.toString());

  //Map
  var doubleList = poudel.map((dp) => dp * 2);
  print(doubleList.toString());
//didnt work

  var evenList = poudel.where((number) => number.isEven);
  print(evenList);

  var oddList = poudel.where((number) => number.isOdd);
  print(oddList);

  var reduceList = poudel.reduce((first, second) => first+second);
 print(reduceList);
}