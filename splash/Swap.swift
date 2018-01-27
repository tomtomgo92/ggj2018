//
//  Swap.swift
//  Splash
//
//  Created by Thomas on 27/01/18.
//  Copyright © 2018 Thomas LLC. All rights reserved.
//


func ==(lhs: Swap, rhs: Swap) -> Bool {
  return (lhs.cookieA == rhs.cookieA && lhs.cookieB == rhs.cookieB) ||
    (lhs.cookieB == rhs.cookieA && lhs.cookieA == rhs.cookieB)
}

struct Swap: CustomStringConvertible, Hashable {
  let cookieA: Cookie
  let cookieB: Cookie
  
  init(cookieA: Cookie, cookieB: Cookie) {
    self.cookieA = cookieA
    self.cookieB = cookieB
  }
  
  var description: String {
    return "swap \(cookieA) with \(cookieB)"
  }
  
  var hashValue: Int {
    return cookieA.hashValue ^ cookieB.hashValue
  }
}
