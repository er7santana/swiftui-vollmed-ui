//
//  VollmedButtonStylesUI.swift
//  Pods
//
//  Created by Eliezer Rodrigo on 27/04/25.
//

import SwiftUI

struct VollmedButtonStylesUI: View {
    var body: some View {
        VStack {
            Text("Button Styles")
            
            Button {
                
            } label: {
                Text("Confirm")
            }
            .buttonStyle(ConfirmPrimaryButtonStyle())
            
            Button("Cancel") { }
                .buttonStyle(CancelButtonStyle())
        }
        .padding()
    }
}

public struct ConfirmPrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1))
            .cornerRadius(12)
            .padding(.top, 8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

public struct CancelButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color(red: 127.0/255.0, green: 41.0/255.0, blue: 44.0/255.0, opacity: 1))
            .cornerRadius(12)
            .padding(.top, 8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

#Preview {
    VollmedButtonStylesUI()
}
