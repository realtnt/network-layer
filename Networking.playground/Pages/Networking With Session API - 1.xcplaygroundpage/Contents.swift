//: [Previous](@previous)

import Foundation

let baseURL = "https://dummyapi.io/data/v1/"
let appID = ""

func loadUser(withID id: String, using session: URLSession = .shared) {
    let url = URL(string: baseURL + "user/\(id)")!
    var urlRequest = URLRequest(url: url)
    urlRequest.setValue(appID, forHTTPHeaderField: "app-id")
    
    let task = session.dataTask(with: urlRequest) { data, response, error in
        if let error {
            print("Error: \(error)")
            return
        }
        
        guard let data else {
            print("No data received")
            return
        }
        
        guard let response else {
            print("No response received")
            return
        }
        
        guard let response = response as? HTTPURLResponse,
            let httpStatus = HTTPStatus(rawValue: response.statusCode) else {
            print("Invalid server response")
            return
        }
                
        guard (200...299).contains(response.statusCode) else {
            print("\(httpStatus.description)")
            return
        }
                
        guard let json = try? JSONSerialization.jsonObject(with: data) else {
            print("Invalid JSON data")
            return
        }
        
        print("Received data: \n\n\(json)")
    }
    
    task.resume()
}

loadUser(withID: "60d0fe4f5311236168a109dd")
//: [Next](@next)
