//
//  Video.swift
//  freeCodeCamp-Netflix
//
//  Created by RainBowT on 2024/9/13.
//

import Foundation

/*
 {
     etag = "QIUNznX8qA6-aBSxrEIGUV6EzQs";
     items =     (
                 {
             etag = "hRDnezx4LRSTgVpV-pRPp6iUe5o";
             id =             {
                 channelId = "UChPRO1CB_Hvd0TvKRU62iSQ";
                 kind = "youtube#channel";
             };
             kind = "youtube#searchResult";
         },
                 {
             etag = "Ngeaj09ZBfr5KSPdolCx6-FPfic";
             id =             {
                 kind = "youtube#playlist";
                 playlistId = "PLcfK69wvRgGcm4j92pXKYsJSzX3zD8M_7";
             };
             kind = "youtube#searchResult";
         },
                 {
             etag = v4it9jvs0iSOXw1aVZ7I8R7K7OM;
             id =             {
                 kind = "youtube#video";
                 videoId = "lIaG_jZH9TM";
             };
             kind = "youtube#searchResult";
         },
                 {
             etag = 9yyXnYeXCQs05F6IqMGeHgd7I4c;
             id =             {
                 kind = "youtube#playlist";
                 playlistId = "PL0ScJ1RTdC1D_0vHWGTKk2z45AZctZ-Mh";
             };
             kind = "youtube#searchResult";
         },
                 {
             etag = "vX4xoa--1KZ4XLyZsY3-RFLQ9rU";
             id =             {
                 kind = "youtube#video";
                 videoId = xHu5IBr7zqg;
             };
             kind = "youtube#searchResult";
         }
     );
     kind = "youtube#searchListResponse";
     nextPageToken = CAUQAA;
     pageInfo =     {
         resultsPerPage = 5;
         totalResults = 1000000;
     };
     regionCode = SG;
 }
 */

struct YoutubeSearchResponse : Codable{
    let items: [VideoElement]
}

struct VideoElement: Codable{
    let id: IdVideoElement
}

struct IdVideoElement: Codable{
    let kind: String
    let videoId: String?
}
