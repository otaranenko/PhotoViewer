//
//  MainViewController.swift
//  PhotoViewer
//
//  Created by Oleg Taranenko on 12/10/2019.
//  Copyright © 2019 Oleg Taranenko. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = UIColor.blue
		let interactor = MainInteractor()
		let service = NetworkService(interactor)
		interactor.networkService = service as? NetworkResultProtocol
		service.requestListPhoto("https://picsum.photos/v2/list")
		// Do any additional setup after loading the view.
	}


}

