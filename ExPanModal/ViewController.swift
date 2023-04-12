//
//  ViewController.swift
//  ExPanModal
//
//  Created by 김종권 on 2023/04/12.
//

import UIKit
import PanModal

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            print("start")
            let vc = MyVC()
            vc.modalPresentationStyle = .fullScreen
            self.presentPanModal(vc)
        })
    }
}

extension MyVC: PanModalPresentable {
    var panScrollable: UIScrollView? {
        scrollView
    }
    
    var shortFormHeight: PanModalHeight {
        .contentHeight(UIScreen.main.bounds.height * 0.4)
    }
}
