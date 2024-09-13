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
    static let BASE_IMAGE_URL = "https://image.tmdb.org/t/p/w500"
    static let API_KEY_YOUTUBE = "AIzaSyC5hTyLaflVBzgEu4qEZE10kJOY0gGVDbE"
    static let BASE_URL_YOUTUBE = "https://www.googleapis.com/youtube/v3/search?"
}

enum APIError: Error{
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()

    func getTrendingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
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
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getTrendingTvs(completion: @escaping (Result<[Title], Error>)-> Void){
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
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
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
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getPopularMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
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
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getTopRatedMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
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
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getDiscoverMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 將 API_KEY 放入 Authorization 標頭
        request.setValue("Bearer \(Constants.API_KEY)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    

    func search(with query: String, completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else{
            return
        }
        guard let url = URL(string: "\(Constants.BASE_URL)/3/search/movie?query=\(query)") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 將 API_KEY 放入 Authorization 標頭
        request.setValue("Bearer \(Constants.API_KEY)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getMovie(with query: String, completion: @escaping (Result<VideoElement, Error>) -> Void) {
        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else{
            return
        }
        guard let url = URL(string: "\(Constants.BASE_URL_YOUTUBE)q=\(query)&type=video&key=\(Constants.API_KEY_YOUTUBE)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
//            do {
//                let results = try JSONSerialization.jsonObject(with: data,options:  .fragmentsAllowed)
//                print(results)
//            } catch {
//                print(error)
//            }
            
            do {
                let results = try JSONDecoder().decode(YoutubeSearchResponse.self, from: data)
                completion(.success(results.items[0]))
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
}
