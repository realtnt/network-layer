import Foundation

struct User {
    let id: String
    let title: String
    let firstName: String
    let lastName: String
    let dateOfBirth: Date
    let email: String
    let gender: String
    let phone: String
    let picture: String
    let registerDate: Date
    let updateDate: Date
    let location: Location
}

struct Location {
    let city: String
    let country: String
    let state: String
    let street: String
    let timezone: String
}
