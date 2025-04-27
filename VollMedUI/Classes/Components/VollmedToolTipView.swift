//
//  VollmedToolTipView.swift
//  VollMedUI
//
//  Created by Eliezer Rodrigo on 27/04/25.
//

import SwiftUI

public struct VollmedToolTipView: View {
    
    private let title: String
    private let description: String
    
    public init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .titleSBoldStyle()
                
            Text(description)
                .bodyRegularStyle()
                .lineLimit(4)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .background {
            Rectangle()
                .fill(Color(red: 230.0/255.0,
                            green: 243.0/255.0,
                            blue: 255.0/255.0))
        }
    }
}

#Preview {
    VollmedToolTipView(title: "Horário disponível", description: "There are a lot of things you can do in space, and space essentially is unlimited resources.")
}
