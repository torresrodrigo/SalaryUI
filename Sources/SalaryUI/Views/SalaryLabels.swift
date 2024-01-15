//
//  SwiftUIView.swift
//  
//
//  Created by Rodrigo on 14/01/2024.
//

import SwiftUI

public struct InstructionsText: View {
    let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text.uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .padding(.horizontal, 30)
    }
}

public struct BigNumberText: View {
    var text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

public struct LabelText: View {
    let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
    }
}

public struct BodyText: View {
    let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12)
    }
}

public struct ButtonText: View {
    let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text)
            .padding()
            .font(.headline)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(.white)
            .cornerRadius(12)
    }
}

public struct SalaryText: View {
    let salary: Int
    
    public init(salary: Int) {
        self.salary = salary
    }
    
    public var body: some View {
        Text(String(salary))
            .bold()
            .kerning(-0.2)
            .font(.title3)
    }
}

struct TextViewPreview: View {
    var body: some View {
        VStack {
            BigNumberText(text: "000")
            InstructionsText(text: "Instructions")
            LabelText(text: "Score")
            BodyText(text: "You scored 200 points\n 😻")
            ButtonText(text: "Start New Round")
            SalaryText(salary: 200)
        }
        .padding()
        .previewDevice("Iphone 14")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TextViewPreview()
        }
    }
}
