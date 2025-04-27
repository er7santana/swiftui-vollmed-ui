//
//  VollmedTextStylesUI.swift
//  Pods
//
//  Created by Eliezer Rodrigo on 26/04/25.
//

import SwiftUI

struct VollmedTextStylesUI: View {
    
    let boldColor = Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1)
    
    var body: some View {
        VStack {
            Text("Title L Regular")
                .titleLRegularStyle()
            
            Text("Title L Bold")
                .titleLBoldStyle()
            
            Text("Title Md Regular")
                .titleMdRegularStyle()
            
            Text("Title Md Bold")
                .titleMdBoldStyle()
            
            Text("Title S Regular")
                .titleSRegularStyle()
            
            Text("Title S Bold")
                .titleSBoldStyle()
            
            Text("Body Regular")
                .bodyRegularStyle()
            
            Text("Body Bold")
                .bodyBoldStyle()
            
            Text("Caption")
                .captionStyle()
        }
    }
}

struct TitleStyleLRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 22))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct TitleStyleLBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 22))
            .foregroundStyle(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1))
            .fontWeight(.bold)
    }
}

struct TitleStyleMdRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct TitleStyleMdBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundStyle(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1))
            .fontWeight(.bold)
    }
}

struct TitleStyleSRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct TitleStyleSBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1))
            .fontWeight(.bold)
    }
}

struct BodyStyleRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct BodyStyleBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundStyle(.gray)
            .fontWeight(.bold)
    }
}

struct CaptionStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

public extension View {
    func titleLRegularStyle() -> some View {
        self.modifier(TitleStyleLRegular())
    }
    
    func titleLBoldStyle() -> some View {
        self.modifier(TitleStyleLBold())
    }
    
    func titleMdRegularStyle() -> some View {
        self.modifier(TitleStyleMdRegular())
    }
    
    func titleMdBoldStyle() -> some View {
        self.modifier(TitleStyleMdBold())
    }
    
    func titleSRegularStyle() -> some View {
        self.modifier(TitleStyleSRegular())
    }
    
    func titleSBoldStyle() -> some View {
        self.modifier(TitleStyleSBold())
    }
    
    func bodyRegularStyle() -> some View {
        self.modifier(BodyStyleRegular())
    }
    
    func bodyBoldStyle() -> some View {
        self.modifier(BodyStyleBold())
    }
    
    func captionStyle() -> some View {
        self.modifier(CaptionStyle())
    }
}

#Preview {
    VollmedTextStylesUI()
}
