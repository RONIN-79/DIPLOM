//
//  Protocols.swift
//  Navigation
//
//  Created by Руфат Багирли on 03.04.2022.
//

import Foundation

protocol ViewModelProtocol {}

protocol Setupable {
    func setup(with viewModel: ViewModelProtocol)
}

protocol ChangeLikesDelegate: AnyObject {
    func likesChanged()
}

protocol ChangeViewsDelegate: AnyObject {
    func viewsChanged(at indexPath: IndexPath)
}
