//
//  Router.swift
//
//  Created by Suat Karakusoglu (Dogus Teknoloji) on 23.12.2019.
//  Copyright © 2019 Suat Karakusoglu (Dogus Teknoloji). All rights reserved.
//

import UIKit.UIApplication

protocol ArenaPresenter: class {
    func present(viewController: UIViewController)
    func push(viewController: UIViewController)
}

protocol Route { }

protocol Router {
    associatedtype Route
    var arenaPresenter: ArenaPresenter { get set }
    func route(to route: Route)
}

extension Router {
    
    func launch(arena: Arena, window: UIWindow? = nil) {
        guard let windowToLaunchOn = window ?? UIApplication.shared.windows.first else {
            print("Couldn't launch arena")
            return
        }
        
        let viewController = arena.viewController
        windowToLaunchOn.rootViewController = viewController
        windowToLaunchOn.makeKeyAndVisible()
        
        let options: UIView.AnimationOptions = .transitionCrossDissolve
        let duration: TimeInterval = 0.25

        UIView.transition(with: windowToLaunchOn, duration: duration, options: options, animations: {}, completion:
        { completed in
        })
    }
    
    func present(arena: Arena) {
        guard let viewController = arena.viewController else { return }
        arenaPresenter.present(viewController: viewController)
    }
    
    func push(arena: Arena) {
        guard let viewController = arena.viewController else { return }
        arenaPresenter.push(viewController: viewController)
    }
}
