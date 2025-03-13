//
//  CharactersViewController.swift
//  GOW_Practice
//
//  Created by Oliver Atondo on 12/03/25.
//

import UIKit

class CharactersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let tableView = UITableView()
    
    private let characters: [Character] = [
        Character(
            id: 0,
            name: NSLocalizedString("character.1.name", comment: "Nombre de Marcus Fenix"),
            game: NSLocalizedString("character.1.game", comment: "Juegos en los que se juega a Marcus Fenix"),
            description: NSLocalizedString("character.1.description", comment: "Descripción de Marcus Fenix")
        ),
        Character(
            id: 1,
            name: NSLocalizedString("character.2.name", comment: "Nombre de Dominic Santiago"),
            game: NSLocalizedString("character.2.game", comment: "Juegos en los que se juega a Dominic Santiago"),
            description: NSLocalizedString("character.2.description", comment: "Descripción de Dominic Santiago")
        ),
        Character(
            id: 2,
            name: NSLocalizedString("character.3.name", comment: "Nombre de Damon Baird"),
            game: NSLocalizedString("character.3.game", comment: "Juegos en los que se juega a Damon Baird"),
            description: NSLocalizedString("character.3.description", comment: "Descripción de Damon Baird")
        ),
        Character(
            id: 3,
            name: NSLocalizedString("character.4.name", comment: "Nombre de Augustus Cole"),
            game: NSLocalizedString("character.4.game", comment: "Juegos en los que se juega a Augustus Cole"),
            description: NSLocalizedString("character.4.description", comment: "Descripción de Augustus Cole")
        ),
        Character(
            id: 4,
            name: NSLocalizedString("character.5.name", comment: "Nombre de Anya Stroud"),
            game: NSLocalizedString("character.5.game", comment: "Juegos en los que se juega a Anya Stroud"),
            description: NSLocalizedString("character.5.description", comment: "Descripción de Anya Stroud")
        ),
        Character(
            id: 5,
            name: NSLocalizedString("character.6.name", comment: "Nombre de Kait Diaz"),
            game: NSLocalizedString("character.6.game", comment: "Juegos en los que se juega a Kait Diaz"),
            description: NSLocalizedString("character.6.description", comment: "Descripción de Kait Diaz")
        ),
        Character(
            id: 6,
            name: NSLocalizedString("character.7.name", comment: "Nombre de JD Fenix"),
            game: NSLocalizedString("character.7.game", comment: "Juegos en los que se juega a JD Fenix"),
            description: NSLocalizedString("character.7.description", comment: "Descripción de JD Fenix")
        ),
        Character(
            id: 7,
            name: NSLocalizedString("character.8.name", comment: "Nombre de Delmont Walker"),
            game: NSLocalizedString("character.8.game", comment: "Juegos en los que se juega a Delmont Walker"),
            description: NSLocalizedString("character.8.description", comment: "Descripción de Delmont Walker")
        ),
        Character(
            id: 8,
            name: NSLocalizedString("character.9.name", comment: "Nombre de Garron Paduk"),
            game: NSLocalizedString("character.9.game", comment: "Juegos en los que se juega a Garron Paduk"),
            description: NSLocalizedString("character.9.description", comment: "Descripción de Garron Paduk")
        ),
        Character(
            id: 9,
            name: NSLocalizedString("character.10.name", comment: "Nombre de Sofia Hendrick"),
            game: NSLocalizedString("character.10.game", comment: "Juegos en los que se juega a Sofia Hendrick"),
            description: NSLocalizedString("character.10.description", comment: "Descripción de Sofia Hendrick")
        )
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("characters.playable", comment: "title")
        view.backgroundColor = .gowBlack1
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CharacterCell.self, forCellReuseIdentifier: "CharacterCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        tableView.backgroundColor = .gowBlack1
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as? CharacterCell else {
            return UITableViewCell()
        }
        cell.configure(with: characters[indexPath.row])
        return cell
    }
}
