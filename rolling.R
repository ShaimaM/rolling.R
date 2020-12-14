#Create a 10 sided dice and a 20 sided dice.
die1 =1:10
probability1=c(1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10)

die2 =1:20
probability2=c(1/20,1/20,1/20,1/20,1/20,1/20,1/20,1/20,1/20,1/20,1/20,1/20,1/20,
               1/20,1/20,1/20,1/20,1/20,1/20,1/20)

#Create a function to roll 7 of these dice at a time and calculate the sum
roll = function(die,probability)
{ 
  dice =sample(die,7, TRUE,probability)
  dice
}

total1=roll(die1,probability1)
total2=roll(die2,probability2)

total1 
total2


addtion = function(dd)
{ 
  sum(dd)
}
addtion1=addtion(total1)
addtion2=addtion(total2)


addtion1
addtion2


#another function to calculate how many dice rolled more than 7


calculate = function(d,x)
{ 
  result=0
  for (i in d) {
    if(i>x){
      result = result+1
    }
  }
  result
}

result1 = calculate(total1,7)
result2 = calculate(total2,17)

result1
result2
