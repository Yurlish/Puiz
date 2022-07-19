//
//  quiz3ViewController.swift
//  Puiz
//
//  Created by clark on R 4/06/29.
//

import UIKit

class quiz3ViewController: UIViewController {
    
    var quiz3Array = [Any]()
    
    var correctAnser: Int = 0
    @IBOutlet var quizTextView: UITextView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quiz3Array.shuffle()
        //quiz2Array.append(["","","","",])
        choiceQuiz()
        // Do any additional setup after loading the view.
    }
    func choiceQuiz(){
        let tmpArray = quiz3Array[0] as! [Any]
        quizTextView.text = tmpArray[0] as? String
        choiceButton1.setTitle(tmpArray[1] as? String, for: .normal)
        choiceButton2.setTitle(tmpArray[2] as? String, for: .normal)
        choiceButton3.setTitle(tmpArray[3] as? String, for: .normal)
    }
    func performSegueToResult2() {
        self.performSegue(withIdentifier: "toResult2View", sender: nil)
    }
//    セグエを準備する時に呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult2View" {
            let result2ViewController = segue.destination as! Result2ViewController
result2ViewController.correctAnswer = self.correctAnser
        }
    }
    
    @IBAction func choiceAnswer(sender:UIButton){
        let tmpArray = quiz3Array[0] as! [Any]
        if tmpArray[4] as! Int == sender.tag{
//            生回数を増やす
            correctAnser = correctAnser + 1
        }
//        解いた問題をquiz2Arrayから取り除く
        quiz3Array.remove(at: 0)
        if quiz3Array.count == 0{
            performSegueToResult2()
        }else{
            choiceQuiz()
        }
        
        
    }
        // Do any additional setup after loading the view.
 
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
