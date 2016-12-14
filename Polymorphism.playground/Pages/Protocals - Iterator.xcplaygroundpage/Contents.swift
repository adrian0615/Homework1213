protocol Iterator {
    associatedtype Element
    mutating func next() -> Element?
}

//research IteratorProtocol and Sequence

//protocol Sequence {
//  associatedyupe Element
//  mutating func makeIterator() -> Element?


let arrayIterator = [1, 2, 3 , 4, 5, 6, 7].makeIterator()

func printAllItems<I : IteratorProtocol>(iterator: I)
    where I.Element == Int {
        var iter = iterator
        
        while let element = iter.next() {
            print(element)
        }
        
}





printAllItems(iterator: arrayIterator)