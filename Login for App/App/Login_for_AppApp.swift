//
//  Login_for_AppApp.swift
//  Login for App
//
//  Created by student on 4/29/24.
//

import SwiftUI
import Firebase

@main
struct Login_for_AppApp: App {
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
