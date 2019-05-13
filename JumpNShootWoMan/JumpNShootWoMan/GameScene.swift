//
//  GameScene.swift
//  JumpNShootWoMan
//
//  Created by Anthony Conciatori on 5/1/19.
//  Copyright © 2019 Anthony Conciatori. All rights reserved.
//
//asdsdfafdsg
//awefafsrgsthdfjdyjdfhj
//aeferfesgrthdhdhrtherg
//afhokjsfouoasidfhojhdsfgojh
//iijdokjhawodkjhaowdkhjawodkjh
//asrfglankjshefkjhaserfkljhsdgarfkj
//aseojhfdoksaejhfklsajefhsalkejhfgikjh
//asefkjhsefkjhasefkjhaseklfjhasertfokj
//spekfjhokjhoikjhqaiwhjjgejkhgrf

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?

    let samus = SKSpriteNode(imageNamed:"placeholder")
    let aButton = SKSpriteNode(imageNamed:"a-button")
    let bButton = SKSpriteNode(imageNamed:"b-button")
    let rButton = SKSpriteNode(imageNamed:"r-button")
    let lButton = SKSpriteNode(imageNamed:"l-button")
    let imageName = "backgroundCave"

    override func didMove(to view: SKView) {

        view.layer.contents = UIImage(named: "backgroundCave")?.cgImage
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {


    }

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
