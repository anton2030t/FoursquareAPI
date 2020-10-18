//
//  PlacesListInteractor.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import UIKit

final class PlacesListInteractor {
    var presenter: PlacesListPresenterProtocol?
}

extension PlacesListInteractor: PlacesListInteractorProtocol {

    func fetchPlaces() {
        let urlParameters: [String: String] = ["near": "Moscow",
                                               "client_id": "XF1VTPPC2A1EX34AMXT0IMD2TE3RG40YXEUQCJW2FQDKNWEG",
                                               "client_secret": "OPVYW5WYQYQ1VP1YBVMRKIU1J2NWLKKH3YHWRCJLL3TWC2FS",
                                               "v": getDate()]
        Network.shared.request(path: "/v2/venues/search",
                               method: .get,
                               bodyParameters: nil,
                               urlParameters: urlParameters,
                               succeed: succeed,
                               failed: failed)
    }

    func succeed(_ response: VenuesResponse) {
        presenter?.placesListFetched(places: response)
    }

    func failed() {
        print("Failed..")
    }

    func getDate() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
}
