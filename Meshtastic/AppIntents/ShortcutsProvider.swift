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
struct ShortcutsProvider {
	static var appShortcuts: [AppShortcut] {
		AppShortcut(intent: ShutDownNodeIntent(),
					phrases: ["Shut down \(.applicationName) node",
							  "Shut down my \(.applicationName) node",
							  "Turn off \(.applicationName) node",
							  "Power down \(.applicationName) node",
							  "Deactivate \(.applicationName) node"],
					shortTitle: "Shut Down",
					systemImageName: "power")

		AppShortcut(intent: RestartNodeIntent(),
					phrases: ["Restart \(.applicationName) node",
							  "Restart my \(.applicationName) node",
							  "Reboot \(.applicationName) node",
							  "Reboot my \(.applicationName) node"],
					shortTitle: "Restart",
					systemImageName: "arrow.circlepath")

		AppShortcut(intent: MessageChannelIntent(),
					phrases: ["Message a \(.applicationName) channel",
							  "Send a \(.applicationName) group message"],
					shortTitle: "Group Message",
					systemImageName: "message")
		AppShortcut(intent: DisconnectNodeIntent(),
					phrases: ["Disconnect \(.applicationName) node",
							  "Disconnect my \(.applicationName) node",
							   "Disconnect from \(.applicationName)",
							   "Disconnect \(.applicationName)"],
					shortTitle: "Disconnect",
					systemImageName: "antenna.radiowaves.left.and.right.slash")
	}
}
