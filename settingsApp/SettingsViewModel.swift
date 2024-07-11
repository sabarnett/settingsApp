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

class SettingsViewModel: ObservableObject {

    // General tab options
    @AppStorage("displayMode") var displayMode: DisplayMode = .auto
    @AppStorage("recentFileCount") var recentFileCount: Int = 5
    @AppStorage("durationForRecentFilters") var recentFileFilters: Int = 5

    // Export settings
    @AppStorage("exportOpenInFinder") var exportOpenInFinder: Bool = true
    @AppStorage("exportOpenFile") var exportOpenFile: Bool = false
    @AppStorage("exportDefaultFormat") var exportDefaultFormat: ExportFormat = .html
    @AppStorage("exportDefaultContent") var exportDefaultContent: ExportContent = .single

    // Advanced Settings extra options
    @AppStorage("closeAppWhenLastWindowCloses") var closeAppWhenLastWindowCloses: Bool = true
}

enum DisplayMode: String, Identifiable, CaseIterable, Equatable, CustomStringConvertible {
    case light
    case dark
    case auto

    var id: String {
        return self.description
    }

    var description: String {
        switch self {
        case .light:
            return "Light"
        case .dark:
            return "Dark"
        case .auto:
            return "Auto"
        }
    }
}

enum ExportFormat: String, CaseIterable, Identifiable, CustomStringConvertible {
    case html
    case xml
    case json
    
    var id: String { self.description }
    
    var description: String {
        switch self {
        case .html:
            return "HTML"
        case .xml:
            return "XML"
        case .json:
            return "JSON"
        }
    }
}

enum ExportContent: String, CaseIterable, Identifiable, CustomStringConvertible {
    case single
    case leg
    
    var id: String { self.description }
    
    var description: String {
        switch self {
        case .single:
            return "Current Item"
        case .leg:
            return "Current Item and Children"
        }
    }
}
