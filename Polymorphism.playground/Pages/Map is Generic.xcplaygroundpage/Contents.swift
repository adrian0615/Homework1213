import Foundation


let names = ["Amy", "Adrian", "Jon", "TJ", "John Jacon Jingleheimer Shimidt"]



names.map { name in
    return name.characters.count
    
}


names.map { name in
    return name.lowercased()
}


let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

names.map { name -> Int in
    var count = 0
    for character in name.characters {
        if vowels.contains(character) {
            count += 1
        }
    }
    return count
}

//Reduce Version
names.map { name -> Int in
    name.characters.reduce(0) { (accum, element) in
        vowels.contains(element) ? accum + 1 : accum
    }
}





