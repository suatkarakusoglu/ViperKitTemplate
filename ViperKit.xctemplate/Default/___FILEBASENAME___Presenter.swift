//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Suat Karakusoglu
//

import UIKit

final class ___VARIABLE_productName:identifier___Presenter: Presenter {

    typealias Command = ___VARIABLE_productName:identifier___PresenterCommand

    typealias Event = ___VARIABLE_productName:identifier___ViewEvent

    typealias Request = ___VARIABLE_productName:identifier___InteractorRequest

    typealias Response = ___VARIABLE_productName:identifier___InteractorResponse

    var requestListener: AnyRequestListener<___VARIABLE_productName:identifier___InteractorRequest>?

    weak var commandListener: ___VARIABLE_productName:identifier___ViewController?

    var router: ___VARIABLE_productName:identifier___Router?

    func handle(event: ___VARIABLE_productName:identifier___ViewEvent) {
        switch event {
        @unknown default:
            print("ViewEvent should be handled at \(#function)")
        }
    }

    func handle(response: ___VARIABLE_productName:identifier___InteractorResponse) {
        switch response {
        @unknown default:
            print("InteractorResponse should be handled at \(#function)")
        }
    }
}
