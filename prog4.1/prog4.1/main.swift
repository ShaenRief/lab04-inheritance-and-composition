//
//  main.swift
//  prog4.1
//
//  Created by Shaen Gallagher on 8/14/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//

import Foundation

let str1: String = "Item V";
let str2: String = "Item E";
let str3: String = "Item S";
let str4: String = "Item M";

var list: LinkedList = LinkedList()
print("\(list)")

list.add(object: str1)
list.add(object: str2)
list.add(object: str3)
list.add(object: str4)
print("\(list)")

var queue: Queue = Queue(list: list)
print("\n\(queue)")

if let item1 = queue.get() {
    print("Got item: \(item1 as! String)")
}
print("\(queue)")

print("Putting item: \(str2)")
queue.put(object: str2)
print("\(queue)")

var stack: Stack = Stack(list: list)
print("\n\(stack)")

if let item2 = stack.pop() {
    print("Popped item: \(item2 as! String)")
}
print("\(stack)")

print("Pushing item: \(str2)")
stack.push(object: str2)
print("\(stack)")

var array: Array = Array(list: list)
print("\n\(array)")

print("Setting array[2] to \(str1)")
//array.set(object: str1, at: 2)
array[2] = str1
print("\(array)")

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

