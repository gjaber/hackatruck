//
//  Artista.swift
//  MusicaApp
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Artista {
    let nome: String
    let imagem: String
    let historico: String
    
    init (nome: String, imagem: String, historico: String) {
        self.nome = nome
        self.imagem = imagem
        self.historico = historico
        
    }
}

class ArtistaDAO {
    static func getList() -> [Artista] {
        Artista(nome: "Artista 1", imagem: artista1, historico: "sdfasdf asdf asdf asdf asd"),
        Artista(nome: "Artista 2", imagem: artista2, historico: "sdfasdf asdf asdf asdf asd"),
        Artista(nome: "Artista 3", imagem: artista3, historico: "sdfasdf asdf asdf asdf asd")
    }
    
}
