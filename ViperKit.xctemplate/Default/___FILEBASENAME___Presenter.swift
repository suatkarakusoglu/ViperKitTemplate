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

    var commandListener: AnyCommandListener<___VARIABLE_productName:identifier___PresenterCommand>?

    var router: Router?

    var arenaPresenter: ArenaPresenter?

    func handle(event: ___VARIABLE_productName:identifier___ViewEvent) {
        switch event {

        }
    }

    func handle(response: ___VARIABLE_productName:identifier___InteractorResponse) {
        switch response {

        }
    }
}
