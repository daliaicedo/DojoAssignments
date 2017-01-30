var HOUR = 10;
var MINUTE = 0;
var PERIOD = "PM";


if(MINUTE === 0){
  console.log("It's", HOUR, "o'clock");
}
if(MINUTE < 30 && MINUTE !==0 && PERIOD === "AM"){
  console.log("It's just after", HOUR, "in the morning.");
}
if(MINUTE < 30 && MINUTE !==0 && PERIOD === "PM"){
  console.log("It's just after", HOUR, "in the evening.");
}
if(MINUTE > 30 && PERIOD === "AM"){
  console.log("It's almost", HOUR+1, "in the morning.");
}
if(MINUTE > 30 && PERIOD === "PM"){
  console.log("It's almost", HOUR+1, "in the evening.");
}
if(MINUTE === 30 && PERIOD === "AM"){
  console.log("It's", HOUR, MINUTE, "in the morning.")
}
if(MINUTE === 30 && PERIOD === "PM"){
  console.log("It's", HOUR+":"+ MINUTE, "in the evening.")
}
