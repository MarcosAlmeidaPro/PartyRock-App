//
//  PartyTableViewCell.swift
//  PartyRock
//
//  Created by MK3 on 19/11/16.
//  Copyright © 2016 Nest Code. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var videoImg: UIImageView!
    
    @IBOutlet weak var videoLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
    }
    
    func updateUI(partyRock: PartyModel) {
        
        videoLbl.text = partyRock.videoTitle
        
        //TODO: set image from Url
        
        let url = URL(string: partyRock.imageUrl)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoImg.image = UIImage(data: data)
                }
                
            } catch {
                
                //Aqui se der erro ao carregar, o código deverá tratar o erro
            }
        }
        
        
        
    }

 

}
