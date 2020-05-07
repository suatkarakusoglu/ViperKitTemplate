//
//  Arena.swift
//
//  Created by Suat Karakusoglu (Dogus Teknoloji) on 23.12.2019.
//  Copyright © 2019 Suat Karakusoglu (Dogus Teknoloji). All rights reserved.
//

import UIKit.UIViewController

protocol Arena {
    var viewController: UIViewController? { get }
}

extension Arena {
    func build<V: View, P: Presenter, I: Interactor>(view: V, presenter: P, interactor: I) where
      V.Event == P.Event, I.Request == P.Request, I.Response == P.Response
    {
        presenter.requestListener = AnyRequestListener<P.Request>(handler: interactor.handle)
        view.eventListener = AnyEventListener<P.Event>(handler: presenter.handle)
        interactor.responseListener = AnyResponseListener<P.Response>(handler: presenter.handle)
    }
}

extension Arena {
    func launch(window: UIWindow? = nil) {
        guard let windowToLaunchOn = window ?? UIApplication.shared.windows.first else {
            print("Couldn't launch arena")
            return
        }
        
        let viewController = self.viewController
        viewController?.launch(window: window)
    }
}

extension UIViewController {
    func launch(window: UIWindow? = nil) {
        guard let windowToLaunchOn = window ?? UIApplication.shared.windows.first else {
            print("Couldn't launch arena")
            return
        }
        
        windowToLaunchOn.rootViewController = self
        windowToLaunchOn.makeKeyAndVisible()
        
        let options: UIView.AnimationOptions = .transitionCrossDissolve
        let duration: TimeInterval = 0.25
        
        UIView.transition(with: windowToLaunchOn, duration: duration, options: options, animations: {}, completion:
            { completed in
        })
    }
}
