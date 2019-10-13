//
//  NetworkServiceProtocol.swift
//  PhotoViewer
//
//  Created by Oleg Taranenko on 13/10/2019.
//  Copyright © 2019 Oleg Taranenko. All rights reserved.
//

import Foundation


/// Протокол взаимодействия с внешним слоем (Interactor) Input
protocol NetworkRequestProtocol: AnyObject {
	
	/// Запрос списка фотографий
	func requestListPhoto(_ urlString: String) -> Bool
	
	/// Начать загрузку фотографии
	/// - Parameter photo: детальная информация по загружаемой фотографии
	func requestPhoto(forType photo: PhotoDetails) -> Bool
}


/// Протокол взаимодействия с внешним слоем (Interactor) Output
protocol NetworkResultProtocol: AnyObject {
	
	/// Список фотографий получен
	func finishLoadDataList(_ dataPhoto: Data)
	
	/// Загрузка фотографии
	func finishLoadPhoto()
}
