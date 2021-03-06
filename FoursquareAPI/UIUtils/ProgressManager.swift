//
//  ProgressManager.swift
//  FoursquareAPI
//
//  Created by Anton Larchenko on 18.10.2020.
//


import UIKit

final class ProgressManager {
    static let shared = ProgressManager()
    private let activityIndicator = UIActivityIndicatorView(style: .large)
    private let containerView = UIView()

    func show(in view: UIView) {
        containerView.frame = CGRect(x: 0,
                                     y: 0,
                                     width: 100,
                                     height: 100)
        containerView.center = view.center
        containerView.backgroundColor = UIColor.gray.withAlphaComponent(0.6)
        containerView.layer.cornerRadius = 6
        view.addSubview(containerView)
        activityIndicator.center.x = containerView.frame.size.width / 2
        activityIndicator.center.y = containerView.frame.size.height / 2
        containerView.addSubview(activityIndicator)
        activityIndicator.startAnimating()
    }

    func hide() {
        containerView.removeFromSuperview()
    }
}
