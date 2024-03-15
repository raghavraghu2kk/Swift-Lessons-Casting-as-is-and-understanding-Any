import UIKit

class Animal {
    var name : String
    init(name: String) {
        self.name = name
    }
}


class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water")
    }
}

let angela = Human(name: "Angela")
let jack = Human(name: "Jack Bauer")
let nemo = Fish(name: "Nemo")

let neighbours = [angela, jack , nemo]

if neighbours[1] is Human {
    print("He is Human")
}

// let cell = UITableViewCell()
// if cell is UITableViewCell {
//    print("The types match")
// }

// Downcast --> as! --> Forced DownCast

func findNemo(from animals : [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            // Forced Downcast
            let fish = animal as! Fish
            fish.breatheUnderWater()
        }
    }
}

findNemo(from: neighbours)

//let fish = neighbours[1] as! Fish

//fish.breatheUnderWater()

print("Optional - Down Casting will check")

if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
} else {
    print("Did not Down Cast")
}

// if let messageCell = as cell as? MessageCell {
// then can use messageCEll's capabilities
// }

// --->> UpCast --> as


func findNemo1(from animals : [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            // Forced Downcast
            let fish = animal as! Fish
            fish.breatheUnderWater()
            // Upcasting to superclass
            let animalFish = fish as Animal
        }
    }
}

findNemo(from: neighbours)

// Any - Array of any kind of objects - Allows both structures and classes

// not possible --
//let num = 12
//let neighbou = [jack , angela , num]\

let num = 12
let neighbou = [jack , angela , num] as [Any]
//or
let neighbou1: [Any] = [jack , angela , num]


// ---> AnyObject -- not possible Structs are not allowed because there are not object


//let neighbou2: [AnyObject] = [jack , angela , num]

// NSObject

let num1 : NSNumber = 12
let word : NSString = "abc"
let neigbouurus : [NSObject] = [num1 , word]




