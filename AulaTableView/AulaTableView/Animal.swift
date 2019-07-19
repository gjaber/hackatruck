//
//  Animal.swift
//  AulaTableView
//
//  Created by student on 19/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Animal {
    let nome: String
    let especie: String
    let nomeDaFoto: String
    
    init (nome: String, especie: String, nomeDaFoto: String) {
        self.nome = nome
        self.especie = especie
        self.nomeDaFoto = nomeDaFoto
    }
    
}

class AnimalDAO {
    static func getList() -> [Animal] {
        return [
            Animal(nome: "Snoopy", especie: "Cachorro", nomeDaFoto: "cachorro"),
            Animal(nome: "Donald", especie: "Pato", nomeDaFoto: "pato"),
            Animal(nome: "Jack", especie: "Canguru", nomeDaFoto: "canguru"),
            Animal(nome: "Zé", especie: "Papagaio", nomeDaFoto: "papagaio"),
            Animal(nome: "Camel", especie: "Camelo", nomeDaFoto: "camelo")
        ]
    }
}
