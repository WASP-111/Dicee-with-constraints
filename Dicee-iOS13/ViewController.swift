//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // чтобы добавить новую кнопку, зажимаем control и перетаскиваем на @IBOutlet. Для каждой кнопки не нужно создавать отдельный @IBOutlet
    // IBОutlet создается когда мы хотим внести изменения в интерфейсе, посредством кода
    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!

    // создаем новую кнопку Interface Builder Action
    @IBAction func rollButtonPressed(_: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceFive")]

        diceImageView1.image = diceArray[Int.random(in: 0 ... 5)] // выбираем рандомное число в диапазоне 0...5
        diceImageView2.image = diceArray[Int.random(in: 0 ... 5)]
        //чтобы добавить иконку, нужно выбрать image.literal здесь работакт правило WHO    WHAT    VALUE
    }
}
