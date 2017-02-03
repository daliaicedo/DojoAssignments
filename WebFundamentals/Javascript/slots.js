function randomChance(quarters,x){
  while (quarters > 0){
  if(Math.floor(Math.random() * 100 + 1) == 10) {
    quarters += Math.floor(Math.random() * 50 + 1);
    console.log(quarters)
    return quarters
  }
  else {
    console.log("You lost");
}
  quarters-=1
}
console.log(quarters)

}


randomChance(3)
