//
//  Stack.swift
//  prog4.2
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//

import Foundation
/**
 A Stack of Objects
 */
class Stack {
    
    //Stored Properties
    var list: LinkedList
    var empty: Bool //can be computed property if count = 0
    var count: Int
    
    /*
     Designated initialiser
     - parameter object: Object referenced by the node
     */
    init(object: Any) {
        list = LinkedList()
        list.add(object: object)
        count = 1
        empty = false
    }
    
    /**
     Stack desription - adds a string indicating the
     container is a stack before invoking super's description
     
     - returns: String String representation of the stack
     */
    var description: String {
        return "(Stack)"+list.description+"<-->"
    }
    
    /**
     Push an an object onto the top of the stack
     
     - parameter object: Object to put on the stack.
     */
    func push(object: Any) {
        // Use inherited method to add object
        // to the list
        list.add(object: object);
        count += 1
    }
    
    /**
     Gets an an object from the top of the stack and returns it
     
     - returns: Any? Object removed from the top of the stack,
     nil if stack is empy.
     */
    func pop() -> Any? {
        // If top points to a non-nil node,
        // remove that node and return its object
        if let t = list.tail {
            //Use inherited method to remove
            //node from the list (at the end)
            list.remove(node: t)
            count -= 1
            return t.object
        } else {
            return nil
        }
    }
}
