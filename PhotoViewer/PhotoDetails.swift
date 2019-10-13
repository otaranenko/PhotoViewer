//
//  PhotoDetails.swift
//  PhotoViewer
//
//  Created by Oleg Taranenko on 13/10/2019.
//  Copyright © 2019 Oleg Taranenko. All rights reserved.
//

import Foundation


/// Модель данных для каждой фотографии
struct PhotoDetails : NetworkDataProtocol {
	/// Индетификатор фотографии
	let id: Int
	/// Автор фотографии
	let author: String
	/// Ширина фотографии
	let width: Int
	/// Высота фотографии
	let height: Int
	/// Оригинальный путь до фотографии
	let url: String
	/// Путь по которому скачать фотографию
	let download_url: String
	/// Фотография
	let rawImage: Data?
	
}
