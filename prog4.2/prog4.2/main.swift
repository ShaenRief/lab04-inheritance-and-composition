//
//  main.swift
//  prog4.2
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//

import Foundation

let str1: String = "Item V";
let str2: String = "Item E";
let str3: String = "Item S";
let str4: String = "Item M";

var queue: Queue = Queue(object: str1)
queue.put(object: str2)
queue.put(object: str3)
queue.put(object: str4)
print("\(queue.description)")

if let item1 = queue.get() {
    print("Got item: \(item1 as! String)")
}
print("\(queue.description)")

print("Putting item: \(str2)")
queue.put(object: str2)
print("\(queue.description)")

print("\n")

var stack: Stack = Stack(object: str1)
stack.push(object: str2)
stack.push(object: str3)
stack.push(object: str4)
print("\(stack.description)")

if let item2 = stack.pop() {
    print("Popped item: \(item2 as! String)")
}
print("\(stack.description)")

print("Pushing item: \(str2)")
stack.push(object: str2)
print("\(stack.description)")

var array: Array = Array(object: str1)
array.add(object: str2)
array.add(object: str3)
array.add(object: str4)
print("\n\(array.description)")

print("Setting array[2] to \(str1)")
//array.set(object: str1, at: 2)
array[2] = str1
print("\(array.description)")

print("Sorting array");
array.sort(isObject: { o1, o2 in (o1 as! String) < (o2 as! String) })
for index in 0..<array.count {
    //print("array[\(index)]=\(array.get(index: index))")
    print("array[\(index)]=\(array[index])")
}


//print("\nTest Assertions")
//print("\(array)")
//print("Get item at array[4]: \(str1)")
//array.get(index: 4)
//print("Setting array[4] to \(str1)")
//array.set(object: str1, at: 4)
//print("Setting array[-1] to \(str1)")
//array.set(object: str1, at: -1)
//print("\(array)")


//EXPECTED OUTPUT v

//(Queue)<--[Item V, Item E, Item S, Item M]<--
//Got item: Item V
//(Queue)<--[Item E, Item S, Item M]<--
//Putting item: Item E
//(Queue)<--[Item E, Item S, Item M, Item E]<--

//(Stack)[Item V, Item E, Item S, Item M]<-->
//Popped item: Item M
//(Stack)[Item V, Item E, Item S]<-->
//Pushing item: Item E
//(Stack)[Item V, Item E, Item S, Item E]<-->

//(Array) 0->[Item V, Item E, Item S, Item M]<-3
//Setting array[2] to Item V
//(Array) 0->[Item V, Item E, Item V, Item M]<-3
//Sorting array
//array[0]=Item E
//array[1]=Item M
//array[2]=Item V
//array[3]=Item V
