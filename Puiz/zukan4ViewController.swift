//
//  zukan4ViewController.swift
//  Puiz
//
//  Created by clark on R 4/06/01.
//

import UIKit

class zukan4ViewController: UIViewController {
var zukan4Array: [Zikan] = []
    @IBOutlet var mondaiLabel:UILabel!
    @IBOutlet var kotaeLabel:UILabel!
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        zukan4Array.append(Zikan(mondai:"",kotae:""))
        
    }
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           
       }
       func setUI(){
           mondaiLabel.text = zukan4Array[index].mondai
           kotaeLabel.text = zukan4Array[index].kotae
       }
       @IBAction func mae(){
           index = index - 1
           setUI()
       }
       @IBAction func tugi(){
           index = index + 1
           setUI()
       }
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


