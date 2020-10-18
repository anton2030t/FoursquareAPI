//
//  PlacesDetailViewController.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import UIKit
import MapKit

class PlacesDetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var presenter: PlacesDetailPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyViewLoaded()
    }

}

extension PlacesDetailViewController: PlacesDetailViewProtocol {
    func setDetailText(text: String) {
        navigationItem.title = text
        detailLabel.text = text
    }
}
