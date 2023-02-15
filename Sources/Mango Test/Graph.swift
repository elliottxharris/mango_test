//
//  File.swift
//  
//
//  Created by Elliott Harris on 2/12/23.
//

import Foundation

struct Vertex: Hashable {
    let classLetter: Character
}

struct Edge: Hashable {
    var origin: Character
    var dest: Character
}

struct Graph: Equatable {
    var graphDict : [Character: [Edge]] = [:]
    
    mutating func addVertex(letter: Character) {
        if graphDict[letter] == nil {
            graphDict[letter] = []
        }
    }
    
    mutating func addEdge(origin: Character, dest: Character) {
        let edge = Edge(origin: origin, dest: dest)
        graphDict[origin]?.append(edge)
    }
}
