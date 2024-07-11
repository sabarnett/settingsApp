//
// -----------------------------------------
// Original project: settingsApp
// Original package: settingsApp
// Created on: 11/07/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    @StateObject private var settings = SettingsViewModel()
    
    var body: some View {
        TabView {
            GeneralSettings(settings: settings)
                .tabItem {
                    Label("General", systemImage: "gearshape")
                }

            ExportSettings(settings: settings)
                .tabItem {
                    Label("Export", systemImage: "square.and.arrow.up")
                }

            AdvancedSettings(settings: settings)
                .tabItem {
                    Label("Advanced", systemImage: "gearshape.2")
                }
        }
        .frame(minWidth: 460)
    }
}

#Preview {
    SettingsView()
}
