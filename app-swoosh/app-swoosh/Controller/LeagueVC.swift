//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by panmajki on 10.08.2017.
//  Copyright © 2017 panmajki. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderButton!
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // jak view się wczyta to player jest zainicalizowany
        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
