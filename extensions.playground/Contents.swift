//: Playground - noun: a place where people can play

import Cocoa

typealias Velocity = Double
extension Velocity {
    var kph: Velocity {return self * 1.60934}
    var mph: Velocity {return self}
    }
    protocol Vehicle {
        var topSpeed: Velocity {get}
        var numberOfDoors: Int {get}
        var hasFlatbed: Bool {get}
    }

struct Car: Vehicle {
    var hasFlatbed: Bool {return false}
    var numberOfDoors: Int {return 4}
    var topSpeed: Velocity {return 180}
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    var gasLevel: Double {
        willSet { precondition(newValue <= 1.0 && newValue >= 0.0, "New Value must be BEtween 0 and 1")
     
            
            
            
            
        }
    }
    }

extension Car {
    enum Kind {
        case coupe, sedan
    }
    
    var kind:Kind {
        if numberOfDoors == 2 {
            return .coupe
        } else{
            return .sedan
        }
        
        
    }
    
    
    init(make: String, model: String, year: Int){
        self.init(make: make, model: model, year: year, color: "Black", nickname: "N/A", gasLevel: 1.0)
    }
    
}

var c = Car(make: "Toyota", model: "Corolla", year: 1999, color: "Black", nickname: "N/A", gasLevel: 0.5)

print(c)