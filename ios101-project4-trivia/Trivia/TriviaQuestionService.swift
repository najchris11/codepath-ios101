//
//  TriviaQuestionService.swift
//  Trivia
//
//  Created by Christian Coulibaly on 7/8/25.
//

import Foundation

// Model for the API response
struct TriviaResponse: Decodable {
    let results: [TriviaQuestion]
}

class TriviaQuestionService {
    func fetchQuestions(amount: Int = 5, completion: @escaping ([TriviaQuestion]?) -> Void) {
        let urlString = "https://opentdb.com/api.php?amount=\(amount)"
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            do {
                let decoder = JSONDecoder()
                let triviaResponse = try decoder.decode(TriviaResponse.self, from: data)
                completion(triviaResponse.results)
            } catch {
                completion(nil)
            }
        }
        task.resume()
    }
}
