import Foundation
import ArgumentParser
import XCTemplateInstallerBundle

@main
struct XCTemplateInstaller: ParsableCommand {
    @Option(name: .shortAndLong, help: "The filepath of xctemplate.")
    var xctemplatePath: String?
    
    let defaultTemplatePath = Bundle.bundle.path(forResource: "VIPER", ofType: "xctemplate")!
    let destinationRelativePath = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application/"
    
    mutating func run() throws {
        let fileManager = FileManager.default
        let templatePath = xctemplatePath ?? defaultTemplatePath
        let templateFileName = URL(fileURLWithPath: templatePath).lastPathComponent
        
        let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"])
            .appending(destinationRelativePath)
            .appending(templateFileName)
        
        if !fileManager.fileExists(atPath: destinationPath){
        
            try fileManager.copyItem(
                atPath: templatePath,
                toPath: destinationPath
            )
            
            print("✅ \(templateFileName) installed succesfully 🎉. Enjoy it 🙂")
        } else {
            try fileManager.removeItem(
                atPath: destinationPath
            )
            
            try fileManager.copyItem(
                atPath: templatePath,
                toPath: destinationPath
            )
            print(destinationPath)
            print("✅ \(templateFileName) already exists. So has been replaced succesfully 🎉. Enjoy it 🙂")
        }
    }
}
