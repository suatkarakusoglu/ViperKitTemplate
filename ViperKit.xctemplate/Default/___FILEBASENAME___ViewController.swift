
import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController, View {

    typealias Event = ___VARIABLE_productName:identifier___ViewEvent
    typealias Command = ___VARIABLE_productName:identifier___PresenterCommand

    var eventListener: AnyEventListener<___VARIABLE_productName:identifier___ViewEvent>?
    
    func handle(command: ___VARIABLE_productName:identifier___PresenterCommand) {
        switch command {

        }
    }

    convenience init() {
        self.init(nibName: "\(___VARIABLE_productName:identifier___ViewController.self)", bundle: nil)
    }
}

extension ___VARIABLE_productName:identifier___ViewController: ArenaPresenter {
    func present(viewController: UIViewController) {
        // navigationController?.pushViewController(viewController, animated: true)
        print("Present view controller.")
    }
}
