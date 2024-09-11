//
//  APICaller.swift
//  freeCodeCamp-Netflix
//
//  Created by RainBowT on 2024/9/10.
//

import Foundation

struct Constants{
    static let API_KEY = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YzhmNWViMmIzY2I5MGI1OTJjZTcyMDE2MTdlMjlhOCIsIm5iZiI6MTcyNTkzNjMyOS4zMjI1MjMsInN1YiI6IjVmMmU2ZThhNWMzMjQ3MDAzNTgzNmFjNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.qf31ohi6yG7vDSpf0bWsxMIpiQ1NgE82ARabB-JVRVY"
    static let BASE_URL = "https://api.themoviedb.org"
}

enum APIError: Error{
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()

    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)/3/trending/movie/day?language=en-US") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 將 API_KEY 放入 Authorization 標頭
        request.setValue("Bearer \(Constants.API_KEY)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getTrendingTvs(completion: @escaping (Result<[Tv], Error>)-> Void){
        guard let url = URL(string: "\(Constants.BASE_URL)/3/trending/tv/day?language=en-US") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 將 API_KEY 放入 Authorization 標頭
        request.setValue("Bearer \(Constants.API_KEY)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)/3/movie/upcoming?language=en-US") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 將 API_KEY 放入 Authorization 標頭
        request.setValue("Bearer \(Constants.API_KEY)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getPopularMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)/3/movie/popular?language=en-US") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 將 API_KEY 放入 Authorization 標頭
        request.setValue("Bearer \(Constants.API_KEY)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getTopRatedMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)/3/movie/top_rated?language=en-US") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 將 API_KEY 放入 Authorization 標頭
        request.setValue("Bearer \(Constants.API_KEY)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
