//
//  ContentView.swift
//  SwiftUI-Localization-Demo
//
//  Created by Anurag on 28/08/26.
//

import SwiftUI

struct LocalizationDemoView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Localized text
                Text("Hello World")
                Text(verbatim: "This will not be localised, This is using verbatim")
                Text(String("This will also not be localised, as it is using String"))
                
                Text("This will be localaized")
                // Localized button
                Button(action: {
                    print("Play tapped")
                }) {
                    Text("Play Highlights")
                }
                
                TitleView(text: "Will TitleView text be localized ?\nThis will not be localized as the text variable is a string!!", text2: "This can be localized")
                
                Text(thisReturnsALocalizableString())
                EnumView()
                ExtraLocalizableTable()
                TextBookStoreView()
            }
            .multilineTextAlignment(.center)
            .padding()
        }
    }
    
    func thisReturnsALocalizableString() -> LocalizedStringKey {
        return "This function Returns A Localizable String"
    }
}

struct TitleView: View {
    let text : String
    let text2 : LocalizedStringKey
    var body: some View {
        Text(text)
            .font(.title3)
            .padding()
        
        Text(text2)
    }
}

struct EnumView: View {
    
    @State private var selectedDirection = Direction.east
    
    var body: some View {
        HStack {
            Text("Select a direction")
            Picker("Select a direction", selection: $selectedDirection) {
                ForEach(Direction.allCases) { direction in
                    Text(direction.title)
                }
            }
        }
    }
}


enum Direction: Identifiable, CaseIterable {
    
    var id: Self {return self}
    
    case north
    case south
    case east
    case west
    
    var title: LocalizedStringResource {
        switch self {
        case .north:
            "North"
        case .south:
            "South"
        case .east:
            "East"
        case .west:
            "West"
        }
    }
}



struct ExtraLocalizableTable: View {
    
    var body: some View {
        Text(LocalizedStringResource("This string will be added to the Extra Loclizable Catalog", table: "ExtraLocalizable"))
        Text(LocalizedStringResource("Finish", table: "ExtraLocalizable", comment: "This is added to check if the comment is being added in the Extra Localizable table"))
    }
}

struct TextBookStoreView: View {
    let totalBooks = 10
    let totalStore = 2
    var body: some View {
        VStack {
            Text("You have \(totalBooks) books in total")
            Text("You have \(totalStore) store in total")
        }
        
    }
}

#Preview("English") {
    LocalizationDemoView()
        .environment(\.locale, Locale(identifier: "EN"))
}

#Preview("German") {
    LocalizationDemoView()
        .environment(\.locale, Locale(identifier: "DE"))
}

#Preview("Hindi") {
    LocalizationDemoView()
        .environment(\.locale, Locale(identifier: "HI"))
}
