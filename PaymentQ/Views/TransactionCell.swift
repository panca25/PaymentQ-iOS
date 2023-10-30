//
//  TransactionCell.swift
//  PaymentQ
//
//  Created by Panca Setiawan on 30/10/23.
//

import UIKit

class TransactionCell: UITableViewCell {

    @IBOutlet weak var labelBankSource: UILabel!
    @IBOutlet weak var labelDataTransactionId: UILabel!
    @IBOutlet weak var labelDataMerchant: UILabel!
    @IBOutlet weak var labelDataAmount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
