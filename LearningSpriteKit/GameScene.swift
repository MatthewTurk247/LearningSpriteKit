//
//  GameScene.swift
//  LearningSpriteKit
//
//  Created by Matthew Turk on 1/23/15.
//  Copyright (c) 2015 Turk Enterprises. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var increment = 0
    var destroyerNode:Destroyer?
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        destroyerNode = Destroyer(imageNamed: "Destroyer")
        destroyerNode!.position = CGPointMake(300, 600)
        addChild(destroyerNode!)
        
    
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            increment = ++increment
            destroyerNode?.position = CGPointMake(destroyerNode!.position.x + CGFloat(increment), 200)
            
            if (destroyerNode? != nil) {
            destroyerNode!.position = location
            destroyerNode!.physicsBody?.velocity = CGVectorMake(0, 0)
            destroyerNode!.physicsBody?.dynamic = false
            let waitAction = SKAction.waitForDuration(2)
                destroyerNode?.runAction(waitAction, completion: {
                    
                    //do stuff here when you want some time to elapse first
                    self.someEvent()
                    
                })
            } else {
                
                println("fail, dude")
                
            }
            
           /*
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)*/
        }
        
    }
    
    func someEvent() {
        
        //some event!
        destroyerNode!.makeBodyDynamic()
        println("the wait is up")
        
    }

   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
