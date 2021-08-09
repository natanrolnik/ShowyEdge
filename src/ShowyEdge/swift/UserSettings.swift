import Combine
import Foundation

final class UserSettings: ObservableObject {
    static let shared = UserSettings()
    static let showMenuSettingChanged = Notification.Name("ShowMenuSettingChanged")
    static let indicatorConfigurationChanged = Notification.Name("IndicatorConfigurationChanged")

    @Published var openAtLogin = OpenAtLogin.enabled {
        didSet {
            OpenAtLogin.enabled = openAtLogin
        }
    }

    //
    // Menu settings
    //

    @UserDefault("kShowIconInMenubar", defaultValue: true)
    var showMenu: Bool {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.showMenuSettingChanged,
                object: nil
            )
        }
    }

    //
    // Indicator settings
    //

    @UserDefault("CustomizedLanguageColor", defaultValue: [])
    var customizedLanguageColors: [[String: String]] {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kIndicatorHeightPx", defaultValue: 5)
    var indicatorHeightPx: Float {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kIndicatorOpacity2", defaultValue: 100)
    var indicatorOpacity: Float {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kHideInFullScreenSpace", defaultValue: false)
    var hideInFullScreenSpace: Bool {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kShowIndicatorBehindAppWindows", defaultValue: false)
    var showIndicatorBehindAppWindows: Bool {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kColorsLayoutOrientation", defaultValue: "horizontal")
    var colorsLayoutOrientation: String {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kUseCustomFrame", defaultValue: false)
    var useCustomFrame: Bool {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kCustomFrameOrigin", defaultValue: 0)
    var customFrameOrigin: Int {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kCustomFrameLeft", defaultValue: 0)
    var customFrameLeft: Float {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kCustomFrameTop", defaultValue: 0)
    var customFrameTop: Float {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kCustomFrameWidth", defaultValue: 100)
    var customFrameWidth: Float {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kCustomFrameWidthUnit", defaultValue: 0)
    var customFrameWidthUnit: Int {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kCustomFrameHeight", defaultValue: 100)
    var customFrameHeight: Float {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }

    @UserDefault("kCustomFrameHeightUnit", defaultValue: 0)
    var customFrameHeightUnit: Int {
        willSet {
            objectWillChange.send()
        }
        didSet {
            NotificationCenter.default.post(
                name: UserSettings.indicatorConfigurationChanged,
                object: nil
            )
        }
    }
}
