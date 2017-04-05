//
//  ViewController.swift
//  animationSample
//
//  Created by Tomoyuki Hayakawa on 2017/04/04.
//  Copyright © 2017年 Tomoyuki Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var charaImage: UIImageView!
	
	// 立ち攻撃用配列
	var imageArrayAttack : Array<UIImage> = []
	// しゃがみ攻撃用配列
	var imageArrayDownAttack : Array<UIImage> = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 各配列に画像を格納する関数の呼び出し
		kakunou()
		
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// 立ち攻撃
	@IBAction func attackBtn(_ sender: Any) {
		// アニメーションの適用
		charaImage.animationImages = imageArrayAttack
		// 1.5秒間隔
		charaImage.animationDuration = 0.5
		// 1回繰り返し
		charaImage.animationRepeatCount = 1
		// アニメーションを開始
		charaImage.startAnimating()
	}
	
	// しゃがみ攻撃
	@IBAction func downAttackBtn(_ sender: Any) {
		// アニメーションの適用
		charaImage.animationImages = imageArrayDownAttack
		// 0.5秒間隔
		charaImage.animationDuration = 0.5
		// 1回繰り返し
		charaImage.animationRepeatCount = 1
		// アニメーションを開始
		charaImage.startAnimating()
	}
	
	// 画像の格納関数
	func kakunou() {
		
		// 立ち攻撃の画像を配列に格納
		while let attackImage = UIImage(named: "attack0\(imageArrayAttack.count+1)") {
			imageArrayAttack.append(attackImage)
		}
		// しゃがみ攻撃の画像を配列に格納
		while let downAtackImage = UIImage(named: "downAttack0\(imageArrayDownAttack.count+1)") {
			imageArrayDownAttack.append(downAtackImage)
		}
	}
}

