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
    let media_type: String?
    let adult: Bool
    let original_language: String?
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
