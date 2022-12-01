//
//  NetworkManager.swift
//  ExamplesApp
//
//  Created by Aleksandr Rybachev on 01.12.2022.
//

import Foundation

// MARK: PROTOCOL
protocol Manageable {
    
    func fetchData<T: Codable>(
        url: URL,
        httpMethod: ServiceMethod,
        body: Data?,
        headers: [String: String]?,
        complication: @escaping((Result<T, NetworkError>) -> Void)
    )
}

// MARK: ENUM
enum NetworkError: Error {
    case timeOut
    case conectionFailure
    case noData
    case invalidURL
    case urlError(statusCode: Int)
    case serilizationFailed
}

enum ServiceMethod: String {
    case get = "GET"
    case post = "POST"
}

enum HeaderKeyValue: String {
    case formUrlEncoded = "application/x-www-form-urlencoded"
    case contentType = "Content-Type"
    case accept = "Accept"
    case applicationJson = "application/json"
}

// MARK: CLASS
class NetwworkManager {
    static let shared = NetwworkManager()
    init() {}
}

// MARK: ESTENSION
extension NetwworkManager: Manageable {
    
    func fetchData<T>(url: URL,
                      httpMethod: ServiceMethod,
                      body: Data?,
                      headers: [String : String]?,
                      complication: @escaping ((Result<T, NetworkError>) -> Void)) where T: Codable {
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod.rawValue
        
        if let body = body, httpMethod != .get {
            request.httpBody = body
        }
        

        
    }
    
    
}

extension URLRequest {
    
    func addHeaders(from headers: [String: String]? = nil) {
        guard let headers = headers, !headers.isEmpty else {
            
        }
    }
    
    func defaultHeaders() {
        
    }
}

extension HTTPURLResponse {
    
    func statusCodeChecker() {
        
    }
    
}

extension Error {
    var desription: String {
        (self as? NetworkError)?.errorDescription ?? self.localizedDescription
    }
}

extension NetworkError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .timeOut:
            return NSLocalizedString("Time out", comment: "timeOut")
        case .conectionFailure:
            return NSLocalizedString("Connetion failure", comment: "conectionFailure")
        case .noData:
            return NSLocalizedString("No data", comment: "noData")
        case .invalidURL:
            return NSLocalizedString("Invalid URL", comment: "invalidURL")
        case .urlError(statusCode: let statusCode):
            return NSLocalizedString("URL Error with \(statusCode)", comment: "urlError")
        case .serilizationFailed:
            return NSLocalizedString("Serilization Failed", comment: "serilizationFailed")
        }
    }
    
}
