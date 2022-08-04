void main(){
 City city = City.yangon;

 print(city.index);//if u wanna show with index which included in City
 print(city.name);//if u wanna show with name which in City but its depend on index
 print(City.values);//if u wanna show all values which included in City
}

enum City{
  mogok,
  mandalay,
  yangon,
  nayPyiDaw
}