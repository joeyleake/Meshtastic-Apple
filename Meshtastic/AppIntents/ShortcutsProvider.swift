//
//  ShortcutsProvider.swift
//  Meshtastic
//
//  Created by Benjamin Faershtein on 8/24/24.
//

import Foundation
import AppIntents

// Personal sideload build only: AppShortcutsProvider conformance disabled below because the
// AppIntents framework registers Siri shortcuts at process launch merely from this conformance
// existing, which hard-crashes (INPreferences assertThisProcessHasSiriEntitlement) on a free/
// personal-team signed build that lacks the com.apple.developer.siri entitlement. Do not commit
// this change — revert before merging.
enum ShortcutsProvider {
}
