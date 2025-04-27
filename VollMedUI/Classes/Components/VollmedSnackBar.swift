//
//  VollmedSnackBar.swift
//  VollMedUI
//
//  Created by Eliezer Rodrigo on 27/04/25.
//

import SwiftUI

public struct VollmedSnackBar: View {
    
    private var title: String
    private var description: String
    
    public init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(.blue)
                
                Text(title)
                    .titleSBoldStyle()
            }
            
            Text(description)
                .bodyRegularStyle()
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .transition(.move(edge: .bottom))
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding()
    }
}

@available(iOS 17.0, *)
#Preview {
    @Previewable @State var isShowing = false
    ZStack {
        VStack {
            Text("Hello, World!")
            
            Spacer()
            
            Button("Show SnackBar") {
                withAnimation {
                    isShowing = true
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isShowing = false
                    }
                }
            }
            .buttonStyle(ConfirmPrimaryButtonStyle())
        }
        .overlay {
            VStack {
                Spacer()
                
                if isShowing {
                    VollmedSnackBar(title: "Meu título",
                                    description: "Minha mensagem para ser exibida"
                    )
                    .transition(.move(edge: .bottom))
                }                
            }
        }
        
    }
    .padding()
}
