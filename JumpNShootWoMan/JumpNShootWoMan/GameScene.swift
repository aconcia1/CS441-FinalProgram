//
//  GameScene.swift
//  JumpNShootWoMan
//
//  Created by Anthony Conciatori on 5/1/19.
//  Copyright © 2019 Anthony Conciatori. All rights reserved.
//

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
    let enemy = SKSpriteNode(imageNamed: "enemy2")
    let leftArrow = SKSpriteNode(imageNamed: "arrow")
    let rightArrow = SKSpriteNode(imageNamed: "arrow")

    override func didMove(to view: SKView) {

        let background = SKSpriteNode(imageNamed: "backgroundCave")
        background.setScale(0.1)
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        
        self.addChild(background)
        
        aButton.setScale(0.1)
        aButton.position = CGPoint(x: self.size.width * 0.75, y: self.size.height * 0.2)
        aButton.zPosition = 1
        aButton.alpha = 0.4
        
        self.addChild(aButton)
        
        samus.setScale(0.15)
        samus.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.2)
        samus.zPosition = 1
        
        self.addChild(samus)
        
        enemy.setScale(4.0)
        enemy.position = CGPoint(x: self.size.width, y: self.size.height * 0.6)
        enemy.zPosition = 1
        
        self.addChild(enemy)
        
        leftArrow.setScale(0.5)
        leftArrow.position = CGPoint(x: self.size.width * 0.20, y: self.size.height * 0.2)
        leftArrow.zPosition = 1
        leftArrow.alpha = 0.3
        leftArrow.zRotation = CGFloat(Double.pi)
        
        self.addChild(leftArrow)
        
        rightArrow.setScale(0.5)
        rightArrow.position = CGPoint(x: self.size.width * 0.27, y: self.size.height * 0.2)
        rightArrow.zPosition = 1
        rightArrow.alpha = 0.3
        
        self.addChild(rightArrow)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let moveSamLeft = SKAction.moveTo(x: samus.position.x * 0.95, duration: 1.0)
        let moveSamRight = SKAction.moveTo(x: samus.position.x * 1.05, duration: 1.0)
        
        let moveUp = SKAction.moveTo(y: self.size.height * 0.7, duration: 3.0)
        let moveDown = SKAction.moveTo(y: self.size.height * 0.2, duration: 3.0)
        
        let jumpSeq = SKAction.sequence([moveUp, moveDown])
        
        for touch in touches {
            
            if(leftArrow.contains(touch.location(in:self))) {
                
                samus.run(moveSamLeft)
            }
            
            else if(rightArrow.contains(touch.location(in: self))) {
                
                samus.run(moveSamRight)
            }
            
            else if(aButton.contains(touch.location(in:self))) {
                
                samus.run(jumpSeq)
            }
        }
    }

    override func update(_ currentTime: TimeInterval) {

        let moveEnemyLeft = SKAction.moveTo(x: 0, duration: 2.0)
        let moveEnemyRight = SKAction.moveTo(x: self.size.width, duration: 2.0)
        
        if(enemy.position.x == self.size.width) {
            
            enemy.texture = SKTexture(imageNamed:"enemy2")
            enemy.run(moveEnemyLeft)
        }
        
        if(enemy.position.x == 0) {
            
            enemy.texture = SKTexture(imageNamed:"enemy2Flip")
            enemy.run(moveEnemyRight)
        }
    }
}
