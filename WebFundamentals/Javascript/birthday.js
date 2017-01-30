var daysUntilMyBirthday = 1;

if(daysUntilMyBirthday > 30){
  console.log(daysUntilMyBirthday + " days until my birthday. A very long time from now :( ");
}
if(daysUntilMyBirthday < 30 &&  daysUntilMyBirthday > 5){
  console.log("It's almost my birthday! Only "+ daysUntilMyBirthday + " days left!")
}
if(daysUntilMyBirthday < 5 && daysUntilMyBirthday > 1){
  console.log("Only "+ daysUntilMyBirthday + " days until my birthday! Let's party!!!" )
}
if(daysUntilMyBirthday <= 1){
  console.log("It's my birthday!!!!")
}
