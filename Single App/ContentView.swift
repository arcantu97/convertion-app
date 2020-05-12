//
//  ContentView.swift
//  Single App
//
//  Created by ramirez.jose.angel on 11/05/20.
//  Copyright © 2020 ramirez.jose.angel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var unitToConvert = ""
    @State private var unitSelected = 0
    @State private var unitSelectedTF = 0
    @State private var unitSelectedTL = 1
    let units = ["Temperature", "Length", "Time"]
    let temperatureUnits = ["Celsius", "Fahrenheit", "Kelvin"]
    let lengthUnits = ["Meters", "Kilometers", "Feet", "Yards", "Miles"]
    let timeUnits = ["Seconds", "Minutes", "Hours", "Days"]
    
    var temperatureConverted: Double{
        let initUnit = unitSelectedTF
        let finalUnit = unitSelectedTL
        var convertion = 0.0
        
        //Temperature
        if(self.unitSelected == 0){
            if(initUnit == 0 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * (9/5)) + 32
                convertion = convertedUnit
            }
            if(initUnit == 0 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = unit + 273.15
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit - 32) * (5/9)
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit - 32) * (5/9) + 273.15
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = unit - 273.15
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit - 273.15) * (9/5) + 32
                convertion = convertedUnit
            }
        }
        
        //Lenght
        if(self.unitSelected == 1){
           // "Meters", "Kilometers", "Feet", "Yards", "Miles"
            if(initUnit == 0 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 1000)
                convertion = convertedUnit
            }
            if(initUnit == 0 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = unit * 3.281
                convertion = convertedUnit
            }
            if(initUnit == 0 && finalUnit == 3){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = unit * 1.094
                convertion = convertedUnit
            }
            if(initUnit == 0 && finalUnit == 4){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 1609)
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = unit * 1000
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = unit * 3281
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 3){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = unit * 1904
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 4){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 1.609)
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 3.281)
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 3281)
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 3){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 3)
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 4){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 5280)
                convertion = convertedUnit
            }
            if(initUnit == 3 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 1.094)
                convertion = convertedUnit
            }
            if(initUnit == 3 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 1094)
                convertion = convertedUnit
            }
            if(initUnit == 3 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 3)
                convertion = convertedUnit
            }
            if(initUnit == 3 && finalUnit == 4){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 1760)
                convertion = convertedUnit
            }
            if(initUnit == 4 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 1609)
                convertion = convertedUnit
            }
            if(initUnit == 4 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 1.609)
                convertion = convertedUnit
            }
            if(initUnit == 4 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 5280)
                convertion = convertedUnit
            }
            if(initUnit == 4 && finalUnit == 3){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 1760)
                convertion = convertedUnit
            }
        }
        
        //Time
        if(self.unitSelected == 2){
            if(initUnit == 0 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 60)
                convertion = convertedUnit
            }
            if(initUnit == 0 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 3600)
                convertion = convertedUnit
            }
            if(initUnit == 0 && finalUnit == 3){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 86400)
                convertion = convertedUnit
            }
            
            if(initUnit == 1 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 60)
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 60)
                convertion = convertedUnit
            }
            if(initUnit == 1 && finalUnit == 3){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 1440)
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 3600)
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 60)
                convertion = convertedUnit
            }
            if(initUnit == 2 && finalUnit == 3){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit / 24)
                convertion = convertedUnit
            }
            if(initUnit == 3 && finalUnit == 0){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 86400)
                convertion = convertedUnit
            }
            if(initUnit == 3 && finalUnit == 1){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 1440)
                convertion = convertedUnit
            }
            if(initUnit == 3 && finalUnit == 2){
                let unit = Double(unitToConvert) ?? 0
                let convertedUnit = (unit * 24)
                convertion = convertedUnit
            }
        }
        
        return convertion
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Unit quantity", text: $unitToConvert).keyboardType(.numbersAndPunctuation)
                }
                
                VStack{
                    Picker("Choose your unit", selection: $unitSelected){
                        ForEach(0 ..< units.count){
                            Text(self.units[$0])
                        }
                    }
                }
                
                if(unitSelected == 0){
                    Section(header: Text("Temperature converter")){
                        VStack{
                            Picker("From", selection: $unitSelectedTF){
                                ForEach(0 ..< temperatureUnits.count){
                                    Text(self.temperatureUnits[$0])
                                }
                            }
                        }
                        VStack{
                            Picker("To", selection: $unitSelectedTL){
                                ForEach(0 ..< temperatureUnits.count){
                                    Text(self.temperatureUnits[$0])
                                }
                            }
                        }
                    }
                }
                
                if(unitSelected == 1){
                    Section(header: Text("Lenght converter")){
                        VStack{
                            Picker("From", selection: $unitSelectedTF){
                                ForEach(0 ..< lengthUnits.count){
                                    Text(self.lengthUnits[$0])
                                }
                            }
                        }
                        VStack{
                            Picker("To", selection: $unitSelectedTL){
                                ForEach(0 ..< lengthUnits.count){
                                    Text(self.lengthUnits[$0])
                                }
                            }
                        }
                    }
                }
                
                if(unitSelected == 2){
                    Section(header: Text("Time converter")){
                        VStack{
                            Picker("From", selection: $unitSelectedTF){
                                ForEach(0 ..< timeUnits.count){
                                    Text(self.timeUnits[$0])
                                }
                            }
                        }
                        VStack{
                            Picker("To", selection: $unitSelectedTL){
                                ForEach(0 ..< timeUnits.count){
                                    Text(self.timeUnits[$0])
                                }
                            }
                        }
                    }
                }
                
                if(unitToConvert.isEmpty){
                    Text("Unit converted: ")
                }
                else if(unitSelected == 0){
                     Text("Unit converted: \(temperatureConverted, specifier: "%.2f")")
                }
                
                else if(unitSelected == 1){
                     Text("Unit converted: \(temperatureConverted, specifier: "%.4f")")
                }
                
                else if(unitSelected == 2){
                     Text("Unit converted: \(temperatureConverted, specifier: "%.3f")")
                }
                
            }.navigationBarTitle(Text("Unit convertion App"), displayMode: .inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

