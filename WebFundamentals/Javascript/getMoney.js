function getMoney(money){
  for (var i = 1; i <= 30; i++){
  money = Math.pow(2,i-1) ;
  if(money / 100 >= 10000){
    console.log(i)
  }
  if(money / 100 >= 1000000000){
    console.log(i)
  }
}
console.log(money);
money = money / 100;
return money
}
getMoney(0)
