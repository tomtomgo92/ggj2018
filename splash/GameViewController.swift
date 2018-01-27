//
//  GameViewController.swift
//  splash
//
//  Created by Thomas Millet on 26/01/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var scene: GameScene!
    var level: Level!
    
    var boule: Ball!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait, .portraitUpsideDown]
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        //configure la vue
        let skView = view as! SKView
        skView.isMultipleTouchEnabled = false
        
        //créait et configure la scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        //presente la scene
        skView.presentScene(scene)
        
        level = Level()
        scene.level = level
        
        level = Level(filename: "Level_1")
        
        beginGame()
    }
    
    func beginGame() {
        shuffle()
    }
    
    func shuffle() {
        let newMap = level.shuffle()
        scene.addSprite(for: newMap)
    }
    

}
