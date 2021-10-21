//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

protocol ___VARIABLE_productName:identifier___ViewOutput: AnyObject {
}

protocol ___VARIABLE_productName:identifier___ViewInput: AnyObject {
}

class ___VARIABLE_productName:identifier___Presenter {
    weak var view: ___VARIABLE_productName:identifier___ViewInput!
    var interactor: ___VARIABLE_productName:identifier___InteractorInput!
}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___ViewOutput {
    
}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___InteractorOutput {
    
}
