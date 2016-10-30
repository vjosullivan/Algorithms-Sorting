//
//  Example.swift
//  AlgorithmsSorting
//
//  Created by Vincent O'Sullivan on 30/10/2016.
//  Copyright © 2016 Vincent O'Sullivan. All rights reserved.
//

import Foundation


/// Handles the sorting of an array of elements 'E' into ascending order.
class ExampleSort<E: Comparable> {

    private var a: [E]

    init(a: [E]) {
        self.a = a
    }

    public func sort() {
        performSort()
        assert(isSorted)
        print("Result:", a)
    }

    private func performSort() {
        /* See Algorithms 2.1, 2.2, 2.3, 2.4, 2.5, or 2.7. */
    }

    private func less(_ v: E, than w: E) -> Bool {
        return v < w
    }

    private func exchange(i: Int, j: Int) {
        let t = a[i]
        a[i]  = a[j]
        a[j]  = t
    }


    /// Property: `true` if the array is sorted, oherwise `false`.
    private var isSorted: Bool {
        for index in 1..<a.count {
            if less(a[index], than: a[index - 1]) {
                return false
            }
        }
        return true
    }
}
