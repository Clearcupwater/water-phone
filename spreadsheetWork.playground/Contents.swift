//: Playground - noun: a place where people can play

import Cocoa

//: Playground - noun: a place where people can play

import Cocoa


protocol TabularDataSource {
    var numberOfRows: Int {get}
    var numberofColumns: Int {get}
    func label (forColumn column: Int)-> String
    func itemFor(row: Int, column: Int)-> String
    
    
    
    
    
}

func printTable (_ dataSource: TabularDataSource){
    var firstRow = "|"
    var columnWidth = [Int]()
    
    
    for i in 0 ..< dataSource.numberofColumns {
        let columnLabel = dataSource.label(forColumn: i)
        let columnHeader = "\(columnLabel) |"
        firstRow += columnHeader
        
        columnWidth.append(columnLabel.characters.count)
        }
    print(firstRow)
    
    for i in 0 ..< dataSource.numberOfRows {
        var out = "|"
        
        for j in 0 ..< dataSource.numberOfRows {
            let item = dataSource.itemFor(row: i, column: j)
            let paddingNeeded = columnWidth[j]-item.characters.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            
            out += "\(padding)\(item) |"
            
        }
        
        print(out)
    
    }
    
    }
    





struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
    
}

struct Department: TabularDataSource {
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
            case 0: return person.name
            case 1: return String(person.age)
            case 2: return String(person.yearsOfExperience)
            default: fatalError("Invalid Column")
        }
    }
    func label(forColumn column: Int) -> String {
        switch column {
        case 0 : return "Employee Name"
        case 1 : return "Age"
        case 2 : return "Years of Experience"
        default: fatalError("Invalid Column")
            
        }
    }
    
    var numberofColumns: Int {
        return 3
    }
    var numberOfRows: Int {
        return people.count
    }

    let name: String
    var people = [Person]()
    
    init(name: String){
        self.name = name
        
    }
    
    
    mutating func add (_ person: Person){
        people.append(person)
        
    }
    
    
}

var department = Department(name: "Engineerign")
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))


printTable(department)
