//
// File: AdvancedSettings.swift
// Package: settingsApp
// Created by: Steven Barnett on 01/07/2024
// 
// Copyright © 2024 Steven Barnett. All rights reserved.
//
        

import SwiftUI

struct AdvancedSettings: View {

    @ObservedObject var settings: SettingsViewModel
    
    var body: some View {
        Form {
            Toggle(isOn: $settings.closeAppWhenLastWindowCloses,
                   label: { Text("Close the app when the last window closes.")})
        }
        .padding()
    }
}

#Preview {
    AdvancedSettings(settings: SettingsViewModel())
}
