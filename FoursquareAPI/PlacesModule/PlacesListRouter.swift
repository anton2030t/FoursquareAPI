//
//  PlacesListRouter.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import UIKit

final class PlacesListRouter {
    weak var presenter: PlacesListPresenterProtocol?
    weak var navigationController: UINavigationController?

    static func createModule(using navigationController: UINavigationController) -> PlacesListViewController {

        let router = PlacesListRouter()
        let presenter = PlacesListPresenter()
        let interactor = PlacesListInteractor()
        let view = PlacesListViewController(nibName: "PlacesListViewController",
                                                                bundle: nil)

        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view

        router.presenter = presenter
        router.navigationController = navigationController


        interactor.presenter = presenter

        view.presenter = presenter

        return view
    }
}

extension PlacesListRouter: PlacesListRouterProtocol {
    func popBack() {

    }

    func push(name: String) {
        let placesDetailModule = PlacesDetailRouter.createModule(name: name)
        navigationController?.pushViewController(placesDetailModule,
                                                 animated: true)
    
    }


}
