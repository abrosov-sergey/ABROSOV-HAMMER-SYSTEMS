import Foundation

// MARK: - Pizza

struct Pizza: Codable {
    let id: Int?
    let nameRu, description: String?
    let price: Int?
    let urlPreview: String?

    enum CodingKeys: String, CodingKey {
        case id, nameRu
        case description
        case price, urlPreview
    }
}

// MARK: - Offline

struct Offline: Codable {
    let pizza: [Pizza]?
}


