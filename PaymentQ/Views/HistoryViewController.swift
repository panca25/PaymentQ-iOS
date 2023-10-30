//
//  HistoryViewController.swift
//  PaymentQ
//
//  Created by Panca Setiawan on 30/10/23.
//

import UIKit

var responseQR = [ResponseQR]()

class HistoryViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
    }
    
    func setTableView() {
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.dataSource = self
        self.tableView.delegate = self
        let nib = UINib.init(nibName: "TransactionCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "TransactionCell")
        self.tableView.separatorStyle = .none
    }

}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        responseQR.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! TransactionCell
        let dict = responseQR[indexPath.row]
        cell.labelBankSource.text = dict.bankSource
        cell.labelDataTransactionId.text = dict.transactionId
        cell.labelDataMerchant.text = dict.merchantName
        cell.labelDataAmount.text = "Rp. \(String(describing: dict.transactionAmount))"
        
        cell.selectionStyle = TransactionCell.SelectionStyle.none
        return cell
    }
    
    
}
