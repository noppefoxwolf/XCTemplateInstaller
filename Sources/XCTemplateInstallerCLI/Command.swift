import Foundation
import ArgumentParser
import XCTemplateInstallerBundle

@main
struct XCTemplateInstaller: ParsableCommand {
    @Option(name: .shortAndLong, help: "The filepath of xctemplate.")
    var xctemplatePath: String?
    
    @Flag(name: .shortAndLong, help: "Show all process description.")
    var verbose: Bool = false
    
    var defaultTemplatePath = Bundle.bundle.path(forResource: "VIPER", ofType: "xctemplate")!
    var destinationRelativePath = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application/"
    
    mutating func run() throws {
        let fileManager = FileManager.default
        let templatePath = xctemplatePath ?? defaultTemplatePath
        verbosePrint("Install template ->", templatePath)
        let templateFileName = URL(fileURLWithPath: templatePath).lastPathComponent
        
        let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"])
            .appending(destinationRelativePath)
            .appending(templateFileName)
        verbosePrint("Copy template to ->", destinationPath)
        
        if !fileManager.fileExists(atPath: destinationPath){
        
            try fileManager.copyItem(
                atPath: templatePath,
                toPath: destinationPath
            )
            
            print("✅ \(templateFileName) installed succesfully 🎉. Enjoy it 🙂")
        } else {
            verbosePrint("Template already exists.")
            
            verbosePrint("Delete exist item.")
            try fileManager.removeItem(
                atPath: destinationPath
            )
            
            try fileManager.copyItem(
                atPath: templatePath,
                toPath: destinationPath
            )
            print("✅ \(templateFileName) already exists. So has been replaced succesfully 🎉. Enjoy it 🙂")
        }
    }
    
    func verbosePrint(_ items: Any...) {
        if verbose {
            print(items)
        }
    }
}
