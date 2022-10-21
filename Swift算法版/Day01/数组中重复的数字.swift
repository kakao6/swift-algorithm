//
//  数组中重复的数字.swift
//  Swift算法版
//
//  Created by 魏跃勇 on 2022/10/22.
//

import Foundation
public class Day1_01 {
    // 数组中重复的数字
   public func duplicte(_ numbers:[Int]) -> Int {
        var mySet = Set<Int>()
        for number in numbers {
            if(mySet.contains(number)){
                return number
            }else{
                mySet.insert(number)
            }
        }
        return -1
    }
}
