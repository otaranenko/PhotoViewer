//
//  NetworkService.swift
//  PhotoViewer
//
//  Created by Oleg Taranenko on 13/10/2019.
//  Copyright © 2019 Oleg Taranenko. All rights reserved.
//

import Foundation


class NetworkService: NSObject, NetworkRequestProtocol, URLSessionDownloadDelegate  {
	
	var interactor: NetworkResultProtocol
//	let sessionDownloadTask: URLSessionDownloadTask
//	let sessionConfiguration: URLSessionConfiguration
//	let urlSession: URLSession
	
	init(_ interactor: NetworkResultProtocol) {
		self.interactor = interactor
	}
	
	func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
		print("downloadLocation:", location)
	}
	
	func requestListPhoto(_ urlString: String) -> Bool {
		guard let url = URL(string: urlString) else { return false }
		let session = URLSession(configuration: .default, delegate: self, delegateQueue: OperationQueue())
		let downloadTask = session.dataTask(with: url) { (data, response, error) in
			guard let _ = error, let dataList = data else { return }
			self.interactor.finishLoadDataList(dataList)
		}
		downloadTask.resume()
		return true
	}
	
	func requestPhoto(forType photo: PhotoDetails) -> Bool {
		return true
	}
	
}

