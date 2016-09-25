//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        
        
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
        
    ]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        
        var persons = [String]()
        
        for (key,value) in favoriteFlavorsOfIceCream {
            if value == flavor{
                persons.append("\(key)")
        }
    }
    return persons
        
}
    
    
    
    
    // 3.
    
    
func count(forFlavor flavor: String) -> Int {
    var persons = [String]()
    var numberOfPersons: Int = 0
    for (key, value) in favoriteFlavorsOfIceCream {
        if value == flavor {
            persons.append("\(key)")
            numberOfPersons = persons.count
        }
    }
     
    return numberOfPersons
}
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        return  favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    
    // 5.
   
    
func replace(flavor: String, person: String) -> Bool{
    let newFlavor = flavor
    let currFlavor = favoriteFlavorsOfIceCream[person]
    if (currFlavor != nil && currFlavor != newFlavor){
        favoriteFlavorsOfIceCream[person] = newFlavor
    return true
    }else{
        return false
    }
}
    
    
    
    
    // 6.
    
func remove(person: String) -> Bool {
    if (favoriteFlavorsOfIceCream[person] != nil){
        favoriteFlavorsOfIceCream[person] = nil
        return true
    }else{
        return false
    }
}
    
    
    
    
    
    // 7.
    
func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
}
   
    
    

    
    
    // 8.
    
    
func add(person:String, flavor:String) -> Bool {
    if (favoriteFlavorsOfIceCream[person] == nil){
        favoriteFlavorsOfIceCream[person] = flavor
        return true
    }else{
        return false
    }
}
    
    
    

    
    // 9.
    
func attendeeList() -> String {
    var returnList: String = ""
        
    let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
    for (index, name) in allNames.enumerated(){
        if let unwrappedFlavor = favoriteFlavorsOfIceCream[name] {
            returnList += "\(name) likes \(unwrappedFlavor)"
          // if not last loop
        if index < (allNames.count - 1) {
            returnList += "\n"
        }
    }
}
    return returnList
}
    
    
    
    
    
    

}
