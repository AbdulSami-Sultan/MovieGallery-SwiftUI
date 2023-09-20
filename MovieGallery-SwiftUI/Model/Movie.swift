//
//  Movie.swift
//  MovieGallery-SwiftUI
//
//  Created by Abdul Sami Sultan on 20/09/2023.
//

import SwiftUI
struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var thumbnail: String
    var title: String
    var description: String
    var trailerLink: String
    var catagory: Catagory
    var isFeaturedMovie: Bool
    
    enum Catagory: String, CaseIterable, Codable, Hashable {
        case marvel = "Marvel"
        case dc = "DC"
        case actionAdventure = "Action and adventure"
    }
}
