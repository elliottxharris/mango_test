import XCTest
@testable import Mango_Test

final class Mango_TestTests: XCTestCase {
    func testBasic() throws {
        let deps = [
            "A B",
            "B C"
        ]
        
        let edgeAB = Edge(origin: "A", dest: "B")
        let edgeAC = Edge(origin: "A", dest: "C")
        let edgeBC = Edge(origin: "B", dest: "C")
        
        let graph = Graph(graphDict: ["A": [edgeAB, edgeAC], "B": [edgeBC]])
        
        
        XCTAssertEqual(mangoTest(deps: deps), graph)
    }
}
