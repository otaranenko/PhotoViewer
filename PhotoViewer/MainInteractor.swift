//
//  MainInteractor.swift
//  PhotoViewer
//
//  Created by Oleg Taranenko on 13/10/2019.
//  Copyright © 2019 Oleg Taranenko. All rights reserved.
//

import Foundation


class MainInteractor : MainInteractorProtocol, NetworkResultProtocol  {
	func finishLoadDataList(_ dataPhoto: Data) {
		
	}
	
	func finishLoadPhoto() {

	}
	
	weak var networkService: NetworkResultProtocol?
	
//	init(_ service: NetworkRequestProtocol) {
//		self.networkService = service
//	}
	
}
