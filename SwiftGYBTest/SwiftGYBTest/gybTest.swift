//
//  gybTest.swift.gyb
//  SwiftGYBTest
//
//  Created by matiastang on 2020/6/28.
//  Copyright © 2020 matiastang. All rights reserved.
//

//%{ abilities = ["strength", "dexterity", "constitution",
//                "intelligence", "wisdom", "charisma"]
//}
//class Character {
//  var name: String
//  % for ability in abilities:
//    var $: type: Int
//  % end
//}


  mutating func encode(_ value: Bool) throws
  mutating func encode(_ value: String) throws
  mutating func encode(_ value: Double) throws
  mutating func encode(_ value: Float) throws
  mutating func encode(_ value: Int) throws
  mutating func encode(_ value: Int8) throws
  mutating func encode(_ value: Int16) throws
  mutating func encode(_ value: Int32) throws
  mutating func encode(_ value: Int64) throws
  mutating func encode(_ value: UInt) throws
  mutating func encode(_ value: UInt8) throws
  mutating func encode(_ value: UInt16) throws
  mutating func encode(_ value: UInt32) throws
  mutating func encode(_ value: UInt64) throws
