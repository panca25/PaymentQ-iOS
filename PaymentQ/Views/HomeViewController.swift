//
//  HomeViewController.swift
//  PaymentQ
//
//  Created by Panca Setiawan on 30/10/23.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController {

    @IBOutlet weak var viewSaldo: UIView!
    @IBOutlet weak var viewBackgroundQR: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
    }

    func setView() {
        viewSaldo.clipsToBounds = true
        viewSaldo.layer.cornerRadius = viewSaldo.frame.height / 6
        viewSaldo.layer.borderWidth = 0.5
        viewSaldo.layer.borderColor = UIColor.lightGray.cgColor
        viewSaldo.backgroundColor = .white
        
        viewBackgroundQR.clipsToBounds = true
        viewBackgroundQR.layer.cornerRadius = viewSaldo.frame.height / 6
        viewBackgroundQR.layer.borderWidth = 0.5
        viewBackgroundQR.layer.borderColor = UIColor.lightGray.cgColor
        viewBackgroundQR.backgroundColor = .white
        
        viewBackgroundQR.isUserInteractionEnabled = true
        viewBackgroundQR.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(backgroundQRTapped)))
    }
    
    @objc func backgroundQRTapped() {
        DispatchQueue.main.async(){
            let xib = QRScannerController(nibName: "QRScannerController", bundle: nil)
            let navController = UINavigationController(rootViewController: xib)
            navController.modalPresentationStyle = .fullScreen
            self.present(navController, animated: true, completion: nil)
        }
    }
}
