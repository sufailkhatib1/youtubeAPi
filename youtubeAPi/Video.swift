//
//  Video.swift
//  youtubeAPi
//
//  Created by Sufail Khatib on 09/09/20.
//  Copyright © 2020 Sufail Khatib. All rights reserved.
//
 
import Foundation

struct Video : Decodable {
    
    var videoId = ""
    var title = ""
    var discription = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet = ""
        case thumbnails
        case high
        case resourceId
        case published = "publishedAt"
        case title
        case discription
        case thumbnail = "url"
        case videoId
        
         
    }
    
    init(from decoder: Decoder) throws {
       let container = try  decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // title
         self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        
        // parse discription
        
        self.discription = try snippetContainer.decode(String.self, forKey: .discription)
        
        
        // parse the published date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
         // parse thumbnail
        let thumbnailConatiner = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailConatiner.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        
        // videoID
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
        
    }
    
    
    
}
