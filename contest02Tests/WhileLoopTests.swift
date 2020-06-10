import XCTest

class WhileLoopTests: XCTestCase {
    func testWhileLoop() {
//        for i in 0...5 {
//            print(i)
//        }
//
//        var a = 0
//        while a < 6 {
//            print(a)
//            a = a + 1
//        }
        // try to generate as many as possible random integers under 100, until it hits 37
        // 3，12， 94，...， 37
        
        var y = arc4random() % 100
        while y != 37 {
            print(y)
        }
        
        let y1 = arc4random() % 100
        for i in 1...100 {
//            let y = arc4random() % 100
            print(y1)
        }
//        print(arc4random() % 100)
//        print(arc4random() % 100)
//        print(arc4random() % 100)
//        print(arc4random() % 100)
//        print(arc4random() % 100)
    }
}
