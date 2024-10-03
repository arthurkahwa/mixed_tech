//
//  SwiftUIView.swift
//  mixed_tech
//
//  Created by Arthur Nsereko Kahwa on 10/3/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State var counter = 0
    // State variables to store user input and result
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var result: String = "Result will appear here"
    
    // Create an instance of the Objective-C Arithmetic class
    let arithmetic = Arithmetic()
    
    var body: some View {
        VStack {
            Text("Hello from SwiftUI!")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                print("SwiftUI Button tapped")
                counter += 1
            }) {
                Text("Tap Me")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Text("\(counter)")
                .font(.largeTitle)
                .padding(.bottom, 24)
            
            Text("Calling Objective-C!")
                .font(.largeTitle)
                .padding()
            
            // Input fields for two numbers
            TextField("Enter first number", text: $number1)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter second number", text: $number2)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Buttons to perform arithmetic operations
            HStack(spacing: 20) {
                Button("Add") {
                    if let a = Int(number1), let b = Int(number2) {
                        let sum = arithmetic.add(Int32(a), with: Int32(b))
                        result = "Sum: \(sum)"
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Subtract") {
                    if let a = Int(number1), let b = Int(number2) {
                        let difference = arithmetic.subtract(Int32(a), with: Int32(b))
                        result = "Difference: \(difference)"
                    }
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            
            HStack(spacing: 20) {
                Button("Multiply") {
                    if let a = Int(number1), let b = Int(number2) {
                        let product = arithmetic.multiply(Int32(a), with: Int32(b))
                        result = "Product: \(product)"
                    }
                }
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Divide") {
                    if let a = Int(number1), let b = Int(number2) {
                        if b != 0 {
                            let quotient = arithmetic.divide(Int32(a), with: Int32(b))
                            result = String(format: "Quotient: %.2f", quotient)
                        } else {
                            result = "Error: Division by zero"
                        }
                    }
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            
            // Display result
            Text(result)
                .font(.largeTitle)
                .padding()
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}


#Preview {
    SwiftUIView()
}
