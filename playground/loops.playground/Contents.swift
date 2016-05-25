//: Playground - noun: a place where people can play

import UIKit

var ages = [23, 44, 25, 65, 55]

for var x = 0; x < ages.count; x++
{
    var age = ages[x]
    if age >= 50
    {
        print("Over 50")
    }
}



//Create a loop that iterates 200 tims starting at 1
//if the value of the current iteration is a multiple of 3 print "Boo"
//if the value of the current iteration is a multiple of 5 print "Ya"
//if the value of the current iteration is a multiple of 3 and a multiple of 5 print "BooYa"

for var i = 1; i <= 200; i++
{
    if i % 15 == 0
    {
        print("BooYa")
    }
    else if i % 3 == 0
    {
        print("Boo")
    }
    else if i % 5 == 0
    {
        print("Ya")
    }
}

