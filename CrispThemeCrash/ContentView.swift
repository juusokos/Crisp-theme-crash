//
//  ContentView.swift
//  CrispThemeCrash
//
//  Created by Tico on 21.6.2023.
//

import SwiftUI
import Crisp

struct ContentView: View {
    @State private var presentChatView = false

    var body: some View {
        Text("""
             Key to the crash is supporting SwiftUI ligh/dark mode:
             1. Have ´Global Accent Color Name´ setting for target in default ´AccentColor´ state
             2. Add Colors to Assets
             3. Try to open Crisp chat
             """)
        .padding(.bottom)
        
        Button("Press here for crash!") {
            presentChatView = true
        }
        .sheet(isPresented: $presentChatView) {
            ChatViewControllerSwiftUI()
        }
    }
}

struct ChatViewControllerSwiftUI: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ChatViewController {
        return ChatViewController()
    }
    
    func updateUIViewController(_ uiViewController: ChatViewController, context: Context) {}
    
    typealias UIViewControllerType = ChatViewController
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

