//
//  Chat_App_Firebase_AuthApp.swift
//  Chat App Firebase Auth
//
//  Created by Muhammad Waleed on 20.09.23.
//

import SwiftUI
import Firebase

@main
struct Chat_App_Firebase_AuthApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
