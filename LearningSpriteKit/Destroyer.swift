//
//  Destroyer.swift
//  LearningSpriteKit
//
//  Created by Matthew Turk on 1/23/15.
//  Copyright (c) 2015 Turk Enterprises. All rights reserved.
//

import Foundation
import SpriteKit

class Destroyer: SKSpriteNode {
    
    
    
    init (imageNamed: String) {
        
        let imageTexture = SKTexture(imageNamed: imageNamed)
        super.init(texture: imageTexture, color: nil, size: imageTexture.size())
        self.physicsBody = SKPhysicsBody(rectangleOfSize: imageTexture.size())
        self.physicsBody?.dynamic = false
        self.physicsBody?.mass = 1
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeBodyDynamic (){
    
        self.physicsBody?.dynamic = true
    
    
    }
    
}