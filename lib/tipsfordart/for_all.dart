void main(){
 //spread operator
 var first = [1,2,3,4,5,6,];
 var second = [7,8,9,10];
 var poudel = [...first,...second];
 print(poudel.toString());

 //Map
 var doubleList = poudel.map((dp) => dp * 2);
 print(doubleList.toString());

//evenList
 var evenList = poudel.where((number) => number.isEven);
 print(evenList);
//oddList
 var oddList = poudel.where((number) => number.isOdd);
 print(oddList);
//reduceList
 var reduceList = poudel.reduce((first, second) => first+second);
 print(reduceList);

 //we will take list and will multiple with 3 and will collect oddnum
 //and we will add these odd num and will show
 var result = poudel.map((number) => number * 3 )
              .where((number) => number.isOdd)
               .reduce((first, second) => first + second);
 print(result);

 var resultone = poudel.map((number) => number * 3 )
     .where((number) => number.isEven)
     .reduce((first, second) => first + second);
 print(resultone);
}