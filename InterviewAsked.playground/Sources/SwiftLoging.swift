//
//  SwiftLoging.swift
//  
//
//  Created by Ravi Raja Jangid on 02/04/25.
//
///Compare 'print' and 'debugPrint' in Swift.
///In Swift, both 'print' and 'debugPrint' functions are used for logging values to the console, but they serve slightly different purposes and provide different output formats, especially useful while debugging.
///The print function outputs the given variable or message to the console in a human-readable form. This is the function you would typically use for quick debugging messages or for simple logging of information during development:
///On the other hand, debugPrint is designed to provide more detailed debugging information about the data it prints. This function outputs the textual representation of an instance that is suitable for debugging. For types that conform to the CustomDebugStringConvertible protocol, debugPrint will use the debugDescription property to get a more detailed representation of the instance, including additional debugging information like explicit quotes around strings and visual representation of escape characters:

///To sum up, you would typically use print for most day-to-day logging, but when you need precise format output for complex data types or want to inspect details that are not normally visible, debugPrint is the preferable choice.
public class Loging {
    //compare print and debugPrint
    let name = "Ravi"
    let age = 10
    var company: String? = "ibindsys"
    var salary: Int? = 10000
    public init(){
        
    }
    public func exe() {
        print("Print Output:")
        print(name) //Ravi
        print("debugPrint Output:")
        debugPrint(name) //"Ravi"
        
        print("Print Output:")
        print(age) //10
        print("debugPrint Output:")
        debugPrint(age) //10
        
        print("Print Output:")
        print(company) //Optional("ibindsys")
        print("debugPrint Output:")
        debugPrint(company)//Optional("ibindsys")
        
        print("Print Output:")
        print(salary) //Optional(1000) if type is double Optional(1000.0)
        print("debugPrint Output:")
        debugPrint(salary)//Optional(1000) if type is double Optional(1000.0)
    }
    
}
