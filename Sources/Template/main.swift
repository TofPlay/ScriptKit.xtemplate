//
//  main.swift
//  Template
//
//  Created by John Doe on 18/06/2017.
//  Base on Tof Templates (https://goo.gl/GdyFiw)
//  Copyright © 2017 John Doe. All rights reserved.
//

import Foundation
import ScriptKit

public class Template : ScriptKit {
  // MARK: -
  // MARK: Public access
  // MARK: -
  
  // MARK: -> Public enums
  
  // MARK: -> Public structs
  
  // MARK: -> Public class
  
  // MARK: -> Public type alias
  
  // MARK: -> Public static properties
  
  // MARK: -> Public properties
  
  // MARK: -> Public class methods
  
  public class func myCommand(_ pVars:[String:String]) {
    display(type: .action, format: "MyCommand")
    
    defer {
      display(type: .done)
    }
    
    guard let lRequiredWithValue = pVars["requiredWithValue"], lRequiredWithValue.isEmpty == false else {
      display(type: .no, format: "option 'requiredWithValue' required")
      return
    }
        
    let lOptionalWithValue = pVars["optionalWithValue"]
    let lOptionalFlag = pVars.keys.contains("optionalFlag")
    
    if lRequiredWithValue == "value" {
      // Do somthing
    }
    
    if lOptionalWithValue == "value" {
      // Do somthing
    }
    
    if lOptionalFlag {
      // Do somthing
    }
  }

  public class func mySubCommand(_ pVars:[String:String]) {
    display(type: .action, format: "MySubCommand")
    
    defer {
      display(type: .done)
    }
    
    guard let lRequiredWithValue = pVars["requiredWithValue"], lRequiredWithValue.isEmpty == false else {
      display(type: .no, format: "option 'requiredWithValue' required")
      return
    }
    
    let lOptionalWithValue = pVars["optionalWithValue"]
    let lOptionalFlag = pVars.keys.contains("optionalFlag")
    
    if lRequiredWithValue == "value" {
      // Do somthing
    }
    
    if lOptionalWithValue == "value" {
      // Do somthing
    }
    
    if lOptionalFlag {
      // Do somthing
    }
  }

  // MARK: -
  // MARK: Main
  // MARK: -
  
  public class func main() {
    let lHelp = """
    The help parameter is used for a long description
    You can have multiple lines
    """
    
    program(version: "0.0.1", owner: "John Doe", year: "2017", info: "My ScriptKit command line tool")
    cmd("mycommand", title: "Short description of my command", help: lHelp,  handler: myCommand)
        option(short: "a", long: "requiredWithValue", variable: "requiredWithValue", default: "requiredDefVal", optional: false, title: "My required option with value", help: lHelp)
        option(short: "b", long: "optionalWithValue", variable: "optionalWithValue", default: "requiredDefVal", optional: true, title: "My optional option with value", help: lHelp)
        option(short: "c", long: "optionalFlag", variable: "optionalFlag", optional: true, title: "My optional option flag", help: lHelp)
        begin()
          cmd("mysubcommand", title: "Description of my sub-command", handler: mySubCommand)
            option(short: "a", long: "requiredWithValue", variable: "requiredWithValue", default: "requiredDefVal", optional: false, title: "My required option with value", help: lHelp)
            option(short: "b", long: "optionalWithValue", variable: "optionalWithValue", default: "requiredDefVal", optional: true, title: "My optional option with value", help: lHelp)
            option(short: "c", long: "optionalFlag", variable: "optionalFlag", optional: true, title: "My optional option flag", help: lHelp)
        end()
    
    run(arguments: CommandLine.arguments)
  }
  
  // MARK: -> Public init methods
  
  // MARK: -> Public operators
  
  // MARK: -> Public methods
  
  // MARK: -> Public implementation protocol <#protocol name#>
  
  // MARK: -
  // MARK: Internal access (aka public for current module)
  // MARK: -
  
  // MARK: -> Internal enums
  
  // MARK: -> Internal structs
  
  // MARK: -> Internal class
  
  // MARK: -> Internal type alias
  
  // MARK: -> Internal static properties
  
  // MARK: -> Internal properties
  
  // MARK: -> Internal class methods
  
  // MARK: -> Internal init methods
  
  // MARK: -> Internal operators
  
  // MARK: -> Internal methods
  
  // MARK: -> Internal implementation protocol <#protocol name#>
  
  // MARK: -
  // MARK: File Private access
  // MARK: -
  
  // MARK: -> File Private enums
  
  // MARK: -> File Private structs
  
  // MARK: -> File Private class
  
  // MARK: -> File Private type alias
  
  // MARK: -> File Private static properties
  
  // MARK: -> File Private properties
  
  // MARK: -> File Private class methods
  
  // MARK: -> File Private init methods
  
  // MARK: -> File Private operators
  
  // MARK: -> File Private methods
  
  // MARK: -
  // MARK: Private access
  // MARK: -
  
  // MARK: -> Private enums
  
  // MARK: -> Private structs
  
  // MARK: -> Private class
  
  // MARK: -> Private type alias
  
  // MARK: -> Private static properties
  
  // MARK: -> Private properties
  
  // MARK: -> Private class methods
  
  // MARK: -> Private init methods
  
  // MARK: -> Private operators
  
  // MARK: -> Private methods
}

Template.main()
