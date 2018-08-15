//
//  Array.swift
//  prog4.2
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//
import Foundation

/**
 Extending the node class to provide it with a method
 for swapping objects between nodes
 */
extension Node {
    
    /**
     Swaps objects between self and another node nodes - useful for
     sorting - instead of swapping and relinking the nodes, it's easier
     to leave the nodes where they are, and just swap their
     objects
     
     - parameter n Node to swap objects with
     */
    func swapObjectsWith(n: Node) {
        let temp: Any = self.object
        self.object = n.object
        n.object = temp
    }
}

/**
 Indexed array of objects
 
 */
class Array {
    
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
     Method for indexed square bracket notation that
     wraps the getObject and setObject methods
     
     - parameter index: Index of the item in the array
     */
    subscript(index: Int) -> Any {
        get {
            return self.get(index: index)
        }
        set(newObject) {
            self.set(object: newObject, at: index)
        }
    }
    
    // METHODS
    
    /**
     Adds an object to the array - overrrides LinkedList method
     in order to increment the _count variable when new object
     is added.
     
     - parameter object: Object to add to the list
     */
    func add(object: Any) {
        list.add(object: object)
        count += 1
    }
    
    /**
     Removes a node from the array - overrideds LinkedList method
     in order to decrement the _count variable when an node (and object)
     is removed form the list
     
     - parameter node: Node to remove from the list
     - returns: Bool True if node found in the list and removed,
     false otherwise.
     */
    func remove(node: Node) -> Bool {
        let nodeRemoved: Bool = list.remove(node: node)
        if nodeRemoved {
            count -= 1
        }
        return nodeRemoved
    }
    
    /**
     Array desription - adds a string indicating the container is an array before invoking super's description
     - returns: String representation of the Array
     */
    var description: String {
        return "(Array) 0->"+list.description+"<-"+"\(count-1)"
    }
    
    /**
     Get the Nth node from the LinkedList
     - parameter index: Index of the node to Get
     - returns: Node? The node at the specified index, or nil
     if index exceeds list count
     */
    func getNodeAtIndex(index: Int) -> Node? {
        var node: Node? = list.head;
        // Walk through the list until the
        // specified index
        if index > 0 {
            for _ in 1...index {
                if let n = node {
                    node = n.next;
                } else {
                    // Exit early if index
                    // exceeds number of
                    // items on the list
                    return nil;
                }
            }
        }
        return node;
    }
    
    /**
     Sort the list using the provided compare function
     
     - parameter isObject: A function that compares two objects and
     returns true if the first one is smaller than the second one
     
     */
    func sort(isObject: (Any, Any) -> Bool) {
        
        while true {
            var swap: Bool = false;
            
            var nodeLeft: Node? = list.head
            
            // Walk through the nodes in the list
            while let nLeft = nodeLeft  {
                // Get the next node in the list
                if let nRight = nLeft.next {
                    // Invoked the function that got passed
                    // in as a parameter to check if the
                    // object that follows the current one
                    // on the list is smaller - if yes,
                    // then swap the object of the two nodes
                    if(isObject(nRight.object, nLeft.object)) {
                        nLeft.swapObjectsWith(n: nRight)
                        swap = true
                    }
                }
                nodeLeft = nLeft.next
            }
            
            // Check if anything got swapped in this
            // pass through the entire list - if not,
            // then the entire list has been completely
            // sorted
            if !swap {
                break;
            }
        }
    }
    
    /**
     array get component - accesses the object at the node from the given index
     - returns: object at index in array
     */
    func get(index: Int) -> Any {
        assert(count > index && index >= 0, "index out of array bounds")
        return getNodeAtIndex(index: index)!.object
    }
    
    /**
     array set component - accesses the object at the node from the given index and set the object to a new given object
     */
    func set(object: Any , at: Int) {
        assert(count > at && at >= 0, "index out of array bounds")
        let node = getNodeAtIndex(index: at)
        node!.object = object
    }
}
