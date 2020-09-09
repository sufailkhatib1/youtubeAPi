//
//  Constants.swift
//  youtubeAPi
//
//  Created by Sufail Khatib on 09/09/20.
//  Copyright © 2020 Sufail Khatib. All rights reserved.
//

import Foundation


struct Constants {
    static var API_KEY = "AIzaSyBum8QMUwVen4Kv8SYMf_qQasY3bladNyg"
    static var PLAYLIST_ID = "PLMRqhzcHGw1YSKIO61XncxTPoFu81K1Mx"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)" 
}
