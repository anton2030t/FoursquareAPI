//
//  PlacesDetailPresenter.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import Foundation

final class PlacesDetailPresenter {
    var view: PlacesDetailViewProtocol?
    var name: String = ""
}

extension PlacesDetailPresenter: PlacesDetailPresenterProtocol {

    func placeInfo(name: String) {
        self.name = name
    }

    func notifyViewLoaded() {
        view?.setDetailText(text: name)
    }
}
