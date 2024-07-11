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
