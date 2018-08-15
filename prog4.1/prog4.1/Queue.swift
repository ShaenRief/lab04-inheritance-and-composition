//
//  Queue.swift
//  prog4.1
//
//  Created by Shaen Gallagher on 8/14/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//

import Foundation

/**
 A queue of objects
 
 */
class Queue : LinkedList {
    
    /**
     Queue desription - adds a string indicating the
     container is a queue before invoking super's description
     
     - returns: String String representation of the queue
     */
    override var description: String {
        return "(Queue)<--"+super.description+"<--"
    }
    
    /**
     Puts an an object at the end of the queue
     
     - parameter object: Object to put in the queue.
     */
    func put(object: Any) {
        // Use inherited method to add object
        // to the list
        self.add(object: object);
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
        if let n = head {
            //Use inherited method to remove
            //node from the list
            self.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
