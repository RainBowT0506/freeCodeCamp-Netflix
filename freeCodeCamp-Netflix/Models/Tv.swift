//
//  Tv.swift
//  freeCodeCamp-Netflix
//
//  Created by RainBowT on 2024/9/10.
//

import Foundation

struct TrendingTvResponse: Codable {
    let page: Int
    let results: [Tv]
    let totalPages, totalResults: Int?
}


struct Tv : Codable {
    let backdrop_path: String?
    let id: Int
    let name, original_name, overview, poster_path: String?
    let media_type: String?
    let adult: Bool
    let original_language: String?
    let genre_ids: [Int]?
    let popularity: Double?
    let first_air_date: String?
    let vote_average: Double?
    let vote_count: Int?
    let origin_country: [String]?
}
