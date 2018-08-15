//
//  Queue.swift
//  prog4.2
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//

import Foundation

/**
 A queue of objects - NOT Inheritance from linked list this time
 
 */
class Queue {
    
    //Stored Properties
    var list: LinkedList
    var empty: Bool //can be computed property if count = 0
    var count: Int
    
    //Initialisers
    
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
     Queue desription - adds a string indicating the
     container is a queue before invoking super's description
     
     - returns: String representation of the queue
     */
    var description: String {
        return "(Queue)<--"+list.description+"<--"
    }
    
    /**
     Puts an an object at the end of the queue
     
     - parameter object: Object to put in the queue.
     */
    func put(object: Any) {
        // Use inherited method to add object
        // to the list
        list.add(object: object);
        count += 1
    }
    
    /**
     Gets an an object from the start of the queue
     
     - returns: Any? Object removed from the start of the queue,
     nil if queue is empy.
     */
    func get() -> Any? {
        // If head points to a non-nil node,
        // remove that node and return its
        // object
        if let n = list.head {
            //Use inherited method to remove
            //node from the list
            list.remove(node: n)
            count -= 1
            return n.object
        } else {
            return nil
        }
    }
}
