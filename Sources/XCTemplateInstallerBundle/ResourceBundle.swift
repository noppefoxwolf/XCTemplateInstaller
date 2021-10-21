import Foundation

/// Workaround for mint
/// https://github.com/yonaskolb/Mint/issues/223
public extension Bundle {
    static var bundle: Bundle { Bundle.module }
}
