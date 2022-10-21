//
//  替换空格.swift
//  Swift算法版
//
//  Created by 魏跃勇 on 2022/10/22.
//

import Foundation
public class Day1_02 {
    // 替换空格 we are family
   public func replaceSpace ( _ s: String) -> String {
      var res = " "
      for char in s {
          if char == " " {
              res.append("%20")
          }else{
              res.append(char)
          }
      }
      return res
    }

}
