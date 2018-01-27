//
//  GameScene.swift
//  splash
//
//  Created by Thomas Millet on 26/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
   

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) is not used in this app")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        let background = SKSpriteNode(imageNamed: "fondNoir")
        background.size = size
        addChild(background)
        
        addChild(gameLayer)
        
        let layerPosition = CGPoint(
            x: -TileWidth * CGFloat(NumColumn) / 2,
            y: -TileHeight * CGFloat(NumRows) / 2
        )
        
        mapsLayer.position = layerPosition
        gameLayer.addChild(mapsLayer)
        mapsLayer.addChild(ballLayer)
        
    }
    
    var level: Level!
    
     let TileWidth: CGFloat = 35.0
     let TileHeight: CGFloat = 40.0
    
    let gameLayer = SKNode()
    let mapsLayer = SKNode()
    
    func addSprite(for maps: Set<Map>) {
    
        for map in maps{
            let sprite = SKSpriteNode(imageNamed: map.color.spriteName)
            sprite.size = CGSize(width: TileWidth, height: TileHeight)
            sprite.position = pointFor(colum: map.column, row: map.row)
            mapsLayer.addChild(sprite)
            map.sprite = sprite
        }
    }
    
    func pointFor(colum: Int, row: Int) -> CGPoint {
        return CGPoint(
            x: CGFloat(colum)*TileWidth + TileWidth/2,
            y: CGFloat(row)*TileHeight + TileHeight/2
        )
    }
    
    var boule: Ball!
    
    var ballLayer = SKNode()
    var player = SKSpriteNode()
    
//    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?){
//        touch in touches {
//            let location = touch.locationNode(self)
//            
//            player.position.x = location.X
//            player.position.y = location.y
//        }
//    }
    
    
}
