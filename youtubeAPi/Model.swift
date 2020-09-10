//
//  model.swift
//  youtubeAPi
//
//  Created by Sufail Khatib on 09/09/20.
//  Copyright © 2020 Sufail Khatib. All rights reserved.
//

import Foundation


class Model {
    
    func getVideos() {
        
        // creating a URL Object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        // Get a URLSession Objects
        
        let session = URLSession.shared
        
        // get a data task from the URLSession Object
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            // check if any errors
            
            if error != nil || data == nil {
                return
                
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data! )
                dump(response)
                
            }
            catch {
                
            }
            // Parsing the data into video objects
            
        }
            
        
        // kick off task
        dataTask.resume()
        
    }
    
}
