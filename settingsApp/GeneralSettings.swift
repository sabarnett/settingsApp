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

struct GeneralSettings: View {
    
    @ObservedObject var settings: SettingsViewModel
    
    var body: some View {
        Form {
            HStack {
                Stepper("Recent Files to Keep",
                    value: $settings.recentFileCount,
                    in: 4...15,
                    step: 1
                )
                Text("\(settings.recentFileCount.formatted()) files")
            }
            .padding(.bottom, 12)
            
            HStack {
                Stepper("Days to use in recent filters",
                        value: $settings.recentFileFilters,
                    in: 1...30,
                    step: 1
                )
                Text("\(settings.recentFileFilters.formatted()) days")
            }
            .padding(.bottom, 12)

            Picker("Display mode", selection: $settings.displayMode) {
                ForEach(DisplayMode.allCases) { mode in
                    Text(mode.description).tag(mode)
                }
            }
        }
        .padding()
    }
}

#Preview {
    GeneralSettings(settings: SettingsViewModel())
}
