//: Playground - noun: a place where people can play

import Cocoa

//: Playground - noun: a place where people can play

import Cocoa

func printTable (_ data: [[String]], withColumnLabels columnLabels: String...){
    var firstRow = "|"
    var columnWidth = [Int]()
    
    
    for columnLabel in columnLabels {
        let columnHeader = "\(columnLabel) |"
        firstRow += columnHeader
        columnWidth.append(columnLabel.characters.count)
    }
    print(firstRow)
    
    for row in data {
        var out = "|"
        
        for (j, item) in row.enumerated() {
            let paddingNeeded = columnWidth[j]-item.characters.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            
            out += "\(padding)\(item) |"
            
        }
        
        print(out)
    
    
    }

    
}



let data = [
    ["Joe", "30", "6"],
    ["Karen", "40", "18"],
    ["Fred", "50", "20"]

]

printTable(data, withColumnLabels: "Employee Name", "Age", "Year of Experience")

