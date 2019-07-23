//
//  Musica.swift
//  MusicaApp
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Musica {
    
    let title: String
    let subTitle: String
    let artista: Int
    
    init (title: String, subTitle: String, artista: Int) {
        self.title = title
        self.subTitle = subTitle
        self.artista = artista
        
    }
    
}

class MusicaDAO {
    static func getList() -> [Musica] {
        return [
            Musica(title: "Musica 1", subTitle: "Subtitulo 1", artista: 1),
            Musica(title: "Musica 2", subTitle: "Subtitulo 2", artista: 2),
            Musica(title: "Musica 3", subTitle: "Subtitulo 3", artista: 1),
            Musica(title: "Musica 4", subTitle: "Subtitulo 4", artista: 3),
            Musica(title: "Musica 5", subTitle: "Subtitulo 5", artista: 1),
            Musica(title: "Musica 6", subTitle: "Subtitulo 6", artista: 1),
            Musica(title: "Musica 7", subTitle: "Subtitulo 7", artista: 1)
        ]
    }
}
