//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

@MainActor
protocol ___VARIABLE_productName:identifier___ViewOutput: AnyObject {
}

@MainActor
protocol ___VARIABLE_productName:identifier___ViewInput: AnyObject {
}

class ___VARIABLE_productName:identifier___Presenter {
    weak var view: ___VARIABLE_productName:identifier___ViewInput!
    var interactor: ___VARIABLE_productName:identifier___InteractorInput!
}

@MainActor
extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___ViewOutput {
    
}