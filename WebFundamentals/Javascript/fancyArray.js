function fancyArr(symbol){
  var arr = ["James", "Jill", "Jane", "Jack"];
  for (var i = 0; i < arr.length; i++){
    if(symbol.length > 0){
      console.log(symbol + arr[i]);
    }
    else{
      console.log("-->" + arr[i]);
    }
  }
}
fancyArr("~");
