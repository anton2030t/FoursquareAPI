//
//  PlacesProtocol.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import UIKit

protocol PlacesListViewProtocol: class {
    func showLoading()
    func hideLoading()
    func reloadData()
    func setupInitialView()
    func setNavigationTitle(with title: String)
}

protocol PlacesListPresenterProtocol: class {
    func notifyViewLoaded()
    func didSelectPlaces(at index: Int)
    func placesListFetched(places: VenuesResponse)
    func placesListFetchFailed()
    func venues() -> [Venues]
}

protocol PlacesListRouterProtocol: class {
    func popBack()
    func push(name: String)
}

protocol PlacesListInteractorProtocol: class {
    func fetchPlaces()
    func succeed(_ response: VenuesResponse)
    func failed()
    func getDate() -> String
}
