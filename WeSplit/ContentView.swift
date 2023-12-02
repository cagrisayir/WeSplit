//
//  ContentView.swift
//  WeSplit
//
//  Created by Omer Cagri Sayir on 2.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages: [Int] = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                
                    Picker("Number Of People", selection: $numberOfPeople) {
                        ForEach(2..<100, id: \.self) {
                            Text("\($0) people")
                        }
                    }
                    
                    Text("\(checkAmount) will be split by \(numberOfPeople)")
                }
                
            }.navigationTitle("WeSplit")

        }
                
        
    }
}

#Preview {
    ContentView()
}
