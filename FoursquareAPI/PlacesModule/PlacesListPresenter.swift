//
//  PlacesListPresenter.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import UIKit

final class PlacesListPresenter {
    var view: PlacesListViewProtocol?
    var router: PlacesListRouterProtocol?
    var interactor: PlacesListInteractorProtocol?
    var venuesResponse: VenuesResponse?
}

extension PlacesListPresenter: PlacesListPresenterProtocol {

    func notifyViewLoaded() {
        view?.setupInitialView()
        view?.showLoading()
        interactor?.fetchPlaces()
        view?.setNavigationTitle(with: "Places")
    }

    func didSelectPlaces(at index: Int) {
        let place = venuesResponse?.response.venues[index]
        router?.push(name: place?.name ?? "")
    }

    func placesListFetched(places: VenuesResponse) {
        venuesResponse = places
        view?.hideLoading()
        view?.reloadData()
    }

    func placesListFetchFailed() {
        interactor?.failed()
    }

    func venues() -> [Venues] {
        guard let venues = venuesResponse?.response.venues else { return [] }
        return venues
    }
}
