
import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController, View {

    typealias Event = ___VARIABLE_productName:identifier___ViewEvent
    typealias Command = ___VARIABLE_productName:identifier___PresenterCommand

    var eventListener: AnyEventListener<___VARIABLE_productName:identifier___ViewEvent>?
    
    func handle(command: ___VARIABLE_productName:identifier___PresenterCommand) {
        switch command {
        @unknown default:
            print("PresenterCommand should be handled at \(#function)")
        }
    }

    convenience init() {
        self.init(nibName: "\(___VARIABLE_productName:identifier___ViewController.self)", bundle: nil)
    }
}

extension ___VARIABLE_productName:identifier___ViewController: ArenaPresenter {
    func present(viewController: UIViewController) {
        self.present(viewController, animated: true)
    }

    func push(viewController: UIViewController) {
        guard let nagivationController = self.navigationController else {
            print("No navigation controller to push in !")
            return
        }

        nagivationController.pushViewController(viewController, animated: true)
    }
}
