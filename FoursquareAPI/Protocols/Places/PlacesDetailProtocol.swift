//
//  PlacesDetailProtocol.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import Foundation

protocol PlacesDetailViewProtocol {
    func setDetailText(text: String)
}

protocol PlacesDetailPresenterProtocol: class {
    func placeInfo(name: String)
    func notifyViewLoaded()
}
