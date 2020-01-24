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
      V.Event == P.Event, I.Request == P.Request, I.Response == P.Response, V.Command == P.Command
    {
        presenter.commandListener = AnyCommandListener<P.Command>(handler: view.handle)
        presenter.requestListener = AnyRequestListener<P.Request>(handler: interactor.handle)
        view.eventListener = AnyEventListener<P.Event>(handler: presenter.handle)
        interactor.responseListener = AnyResponseListener<P.Response>(handler: presenter.handle)
    }
}
