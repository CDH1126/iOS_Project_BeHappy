//
//  VideoViewController.swift
//  BMI_cdh
//
//  Created by Induk CS on 2024/11/27.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    
    @IBAction func playVideo(_ sender: UIButton) {
        guard let videoPath = Bundle.main.path(forResource: "APT", ofType: "mp4") else{
            // print("비디오 파일이 없습니다")
            return
        }
        
        let videoURL = URL(filePath: videoPath)
        let player1 = AVPlayer(url: videoURL)
        
        let playerContorller = AVPlayerViewController()
        playerContorller.player = player1
//      present(playerContorller, animated: true)
//      player1.play() // 마지막 두 줄대로 하면 비디오 컨트롤러가 뜨기 전에 비디오가 뜨는 경우가 생길 수 있다
        present(playerContorller, animated: true) {
            player1.play()
        } // playerController 가 완성되면 -> 동영상 재생
        
        
    }
//            guard let videoPath = Bundle.main.path(forResource: "APT", ofType: "mp4") else {
//                print("비디오 파일을 찾을 수 없습니다.")
//                return
//            }
//
//            let videoURL = URL(fileURLWithPath: videoPath)
//            let player = AVPlayer(url: videoURL)
//            let playerViewController = AVPlayerViewController()
//            playerViewController.player = player
//
//            // 비디오 플레이어 화면을 현재 뷰 컨트롤러에 추가
//            self.present(playerViewController, animated: true) {
//                playerViewController.player?.play()
//            }
//        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            // Do any additional setup after loading the view.
        }

    }

