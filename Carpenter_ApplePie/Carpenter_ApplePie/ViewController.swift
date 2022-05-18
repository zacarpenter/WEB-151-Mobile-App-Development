//
//  ViewController.swift
//  Carpenter_ApplePie
//
//  Created by Zachary Carpenter on 3/30/21.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "glorious", "raleigh", "zeus", "hades"]
    
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet { newWordButton.isEnabled = true }
    }
    var totalLosses = 0 {
        didSet { newWordButton.isEnabled = true }
    }
    var totalPoints = 0

    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var points: UILabel!
    
    @IBOutlet var newWordButton: UIButton!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newWordButton.isEnabled = false
        newRound()
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateScore()
        updateGameState()
    }

    @IBAction func newWord(_ sender: UIButton) {
        newRound()
    }
    
    var currentGame: Game!

    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            newWordButton.isEnabled = false
            updateUI()
        } else {
            enableLetterButtons(false)
            newWordButton.isEnabled = false
        }
    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins) | Losses: \(totalLosses)"
        points.text = "Points: \(totalPoints)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            correctWordLabel.text = currentGame.word
            treeImageView.image = UIImage(named: "Tree 0")
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
            totalPoints += 100
            // for some reason when I clicked the final letter correctly it did not display. used this as a work around
            correctWordLabel.text = currentGame.formattedWord
        } else {
            updateUI()
        }
    }
    
    // not quite right, doesn't handle words with duplicate characters
    func updateScore() {
        let currentCharacter = currentGame.guessedLetters.last!
        if currentGame.word.contains(currentCharacter) {
            totalPoints += 10
        }
    }
    
}

