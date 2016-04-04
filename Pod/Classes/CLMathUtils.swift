//
//  CLMathUtils.swift
//  Pods
//
//  Created by Chris Larsen on 4/3/16.
//
//

import Foundation

//
//  CLMathUtils.swift
//
//  Created by Chris Larsen on 10/25/15.
//  Copyright © 2015 Chris Larsen. All rights reserved.
//

import Foundation

class CLMathUtils {
    
    // MARK : Percent Methods
    
    /*
    getPercentage
    
    Returns requested percentage of a number
    
    @param wholeNumber:Double
    @param percentageWanted:Double
    
    @return Double
    */
    
    static func getPercentage(wholeNumber:Double, percentageWanted:Double) -> Double {
        
        let percentage = (percentageWanted / 100) * wholeNumber
        
        return percentage
    }
    
    
    // MARK: Fibonacci Methods
    
    /*
    getFibonacciNumberByPlace
    
    returns requested Fibonacci number,
    works up until 92nd Fibonacci number
    
    @param n: Int
    
    @return Int
    */
    
    static func getFibonacciNumberByPlace(n: Int) -> Int {
        
        if n > 92 {
            print("number to large")
            return 0;
        }
        
        if n <= 1 {
            return n;
        }
        
        var fibArr = [Int]()
        
        for i in 0...n {
            if i == 0 || i == 1
            {
                fibArr.append(i)
            }
            
            if i > 1
            {
                fibArr.append(fibArr[i-1] + fibArr[i-2])
            }
        }
        
        return fibArr[n]
    }
    
    // MARK: GCD & LCM
    
    /*
    gcd
    
    returns greatest common denominator of two numbers via a recursive method
    
    @param a: UInt64
    @param b: UInt64
    
    @return UInt64
    */
    
    static func gcd(a a: UInt64, b: UInt64) -> UInt64 {
        if b == 0 {
            return a
        }
        
        let remainder: UInt64 = a % b
        
        return CLMathUtils.gcd(a: b, b: remainder)
    }
    
    /*
    lcm
    
    returns Lowest Common Multiple of two numbers
    
    @param a: UInt64
    @param b: UInt64
    
    @return UInt64
    */
    
    static func lcm(a: UInt64, b: UInt64) -> UInt64 {
        let foundGCD: UInt64 = CLMathUtils.gcd(a: a, b: b)
        let ab: UInt64 = a * b
        
        return (ab / foundGCD)
    }
    
    
}