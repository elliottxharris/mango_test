func mangoTest(graph: Graph = Graph(), deps: [String]) -> Graph {
    var dependencies = graph
    for depList in deps {
        let classLetter = depList.first!
        dependencies.addVertex(letter: classLetter)
        
        let directDeps = depList.split(separator: " ")[1...]
        
        directDeps.forEach { char in
            dependencies.addVertex(letter: char.first!)
        }
        
        directDeps.forEach { char in
            dependencies.addEdge(origin: classLetter, dest: char.first!)
        }
    }
    
    return dependencies
}

