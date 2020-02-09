
import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController, View {

    typealias Event = ___VARIABLE_productName:identifier___ViewEvent
    typealias Command = ___VARIABLE_productName:identifier___PresenterCommand

    var eventListener: AnyEventListener<___VARIABLE_productName:identifier___ViewEvent>?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

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
