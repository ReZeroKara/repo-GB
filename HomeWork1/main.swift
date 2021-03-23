//
//  main.swift
//  HomeWork1
//
//  Created by Re:Zero on 23.03.2021.
//

import Foundation
import Darwin.C.math

//Решение квадратного уравнения
    var a = 2.0
    var b = 10.0
    var c = 8.0
    var x1 = 0.0
    var x2 = 0.0

    var D = pow(b, 2)-4*a*c

    if (D<0)
    {
        print ("Нет корней")
    }

    if (D==0)
    {
        x1 = (-b+sqrt(D))/(2*a)
        print (x1)
    }

    if (D>0)
    {
        x1 = (-b+sqrt(D))/(2*a)
        x2 = (-b-sqrt(D))/(2*a)
        print (x1, x2)
    }


//Площадь, пириметр и гипотенуза треугольника
    var a = 10.0
    var b = 27.0
    var S = (a*b)/2
    var c = sqrt((a*a)+(b*b))
    var P = a+b+c
    print(S)
    print(P)
    print(c)


//Расчёт вклада
    var S = 5238450.0 //первоначальная сумма
    var x = 10.0 //процент
    var n = 5.0 //срок вклада
    var S2 = S*pow(Double((1+(x/100))),n)
    print (S2)
