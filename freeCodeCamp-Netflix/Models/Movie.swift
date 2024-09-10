//
//  Movie.swift
//  freeCodeCamp-Netflix
//
//  Created by RainBowT on 2024/9/10.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let page: Int
    let results: [Movie]
    let total_pages: Int?
    let total_results: Int?

 
}

struct Movie: Codable {
    let backdrop_path: String?
    let id: Int
    let title: String?
    let original_title: String?
    let overview: String
    let poster_path: String?
    let media_type: MediaType?
    let adult: Bool
    let original_language: OriginalLanguage?
    let genre_ids: [Int]?
    let popularity: Double
    let release_date: String?
    let video: Bool?
    let vote_average: Double?
    let vote_count: Int?
    let name: String?
    let original_name: String?
    let first_air_date: String?
    let origin_country: [String]?

}

enum MediaType: String, Codable {
    case movie
    case tv
}

enum OriginalLanguage: String, Codable {
    case en
    case ja
    case ko
}
