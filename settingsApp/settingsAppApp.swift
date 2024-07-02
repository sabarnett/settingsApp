//
// File: settingsAppApp.swift
// Package: settingsApp
// Created by: Steven Barnett on 01/07/2024
// 
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import SwiftUI

@main
struct settingsAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        Settings {
            SettingsView()
        }
    }
}
