//
//  ViewController.swift
//  PartyRock
//
//  Created by MK3 on 19/11/16.
//  Copyright © 2016 Nest Code. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Array que armazenará as informações de Imagem, Video e Título do conteúdo do modelo PartyModel.
    
    var partyRockList = [PartyModel]()
    
    // Configuração da tabela
    
    @IBOutlet weak var partyTable: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRockList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "partycell", for: indexPath) as? PartyTableViewCell {
            
            let partyItemCell = partyRockList[indexPath.row]
            
            cell.updateUI(partyRock: partyItemCell)
            
            return cell
            
        } else {
        
        return UITableViewCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyItemCell = partyRockList[indexPath.row]
        
        performSegue(withIdentifier: "playVideo", sender: partyItemCell)
        
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            
            if let party = sender as? PartyModel {
                destination.videoPlay = party
             
            }
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set(partyRockList, forKey: "Lista")
        
        
        let partyItem1 = PartyModel(imageUrl: "http://fistintheair.com/wp-content/uploads/2013/10/Screen-Shot-2013-10-20-at-3.34.25-PM.png", videoUrl: "<iframe width=\"394\" height=\"295\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        
        let partyItem2 = PartyModel(imageUrl: "https://i.ytimg.com/vi/JRnmuUVlX50/maxresdefault.jpg", videoUrl:  "<iframe width=\"394\" height=\"295\" src=\"https://www.youtube.com/embed/c_3xZgvy6fo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
       
        
        let partyItem3 = PartyModel(imageUrl: "https://i.ytimg.com/vi/k7OtcWVaT5s/maxresdefault.jpg", videoUrl: "<iframe width=\"394\" height=\"295\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        
        let partyItem4 = PartyModel(imageUrl: "http://lh3.googleusercontent.com/-ZSKE_zalGto/VbrRXIp2LAI/AAAAAAAAAdw/2crL_WuVZ-w/s600/ghjgj.jpg", videoUrl: "<iframe width=\"394\" height=\"295\" src=\"https://www.youtube.com/embed/TrVLu9p65a0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where the Sun Goes")
        
        
        let partyItem5 = PartyModel(imageUrl: "https://upload.wikimedia.org/wikipedia/it/0/0a/Sorry_for_Party_Rocking_Official_Video.png", videoUrl: "<iframe width=\"394\" height=\"295\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sorry For Party Rocking")
        
        
        let partyItem6 = PartyModel(imageUrl: "https://i.ytimg.com/vi/wyx6JDQCslE/maxresdefault.jpg", videoUrl: "<iframe width=\"394\" height=\"295\" src=\"https://www.youtube.com/embed/wyx6JDQCslE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sexy and I Know It")
        
        
        
        partyRockList.append(partyItem1)
        partyRockList.append(partyItem2)
        partyRockList.append(partyItem3)
        partyRockList.append(partyItem4)
        partyRockList.append(partyItem5)
        partyRockList.append(partyItem6)
        
        
        
        partyTable.delegate = self
        partyTable.dataSource = self
        
    }

   


}

