//
//  PlacesDetailRouter.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import Foundation

final class PlacesDetailRouter {

    weak var presenter: PlacesDetailPresenterProtocol?

    static func createModule(name: String) -> PlacesDetailViewController {

        let view = PlacesDetailViewController(nibName: "PlacesDetailViewController",
                                              bundle: nil)
        let router = PlacesDetailRouter()
        let presenter = PlacesDetailPresenter()

        view.presenter = presenter
        router.presenter = presenter
        presenter.view = view

        router.presenter?.placeInfo(name: name)
        return view
    }
}
