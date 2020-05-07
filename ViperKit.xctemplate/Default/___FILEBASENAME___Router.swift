import Foundation

enum ___VARIABLE_productName:identifier___Route: Route {

}

final class ___VARIABLE_productName:identifier___Router: Router {
    typealias ArenaRoute = ___VARIABLE_productName:identifier___Route

    weak var arenaPresenter: ArenaPresenter?

    init(arenaPresenter: ArenaPresenter) {
        self.arenaPresenter = arenaPresenter
    }
    
    func route(to route: ___VARIABLE_productName:identifier___Route) {
        switch route {
        default:
            print("No route")
        }
    }
}
