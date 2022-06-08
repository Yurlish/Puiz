//
//  quiz2ViewController.swift
//  Puiz
//
//  Created by clark on R 4/06/01.
//

import UIKit

class quiz2ViewController: UIViewController {
    
    var quizArray = [Any]()
    
    var correctAnser: Int = 0
    @IBOutlet var quizTextView: UITextView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizArray.append(["apple","猿","バナナ","りんご",3])
        quizArray.append(["bom","ボンド","爆弾","ボタン",2])
        quizArray.append(["cat","切る","猫","葛藤",2])
        quizArray.append(["die","台","台紙","死",3])
        quizArray.append(["easy","簡単","いい字","インド人",1])
        quizArray.append(["fang","ハンガー","牙","ファンサービス",2])
        quizArray.append(["gost","ゴキブリ","お化け","犯罪者",2])
        quizArray.append(["hunter","とっとこ〜走るよハム太郎〜","ひ〜まわりのたね〜","密猟者",3])
        quizArray.append(["ice","スマホに代わる新型携帯電話","氷","池",2])
        quizArray.append(["jump","はねる","ｺｯｺｯｺｯｺｯｺｯ","週刊誌",1])
        quizArray.append(["kid","近所の城戸さん","子ども","ガキ",2])
        quizArray.append(["lock","ロックバンド","監禁","施錠",3])
        quizArray.append(["must","しなければならない","ムスカ","ムシューダ",1])
        quizArray.append(["note","海苔","ノート","のってる？",2])
        quizArray.append(["octopus","置くとパス","イカ","タコ",3])
        quizArray.append(["piano","ピノ","パイナップル","ピアノ",3])
        quizArray.append(["quiz","こいつ....!","クイズ","恋する",2])
        quizArray.append(["restaurant","レストラン","連想ゲーム","ダンスする",1])
        quizArray.append(["solt","塩","反る","白",1])
        quizArray.append(["table","亀","テーブル","タブレット",2])
        quizArray.append(["utopia","絶望的な世界","失恋☆世界","理想的な世界",3])
        quizArray.shuffle()
        choiceQuiz()
        // Do any additional setup after loading the view.
    }
    func choiceQuiz(){
        let tmpArray = quizArray[0] as! [Any]
        quizTextView.text = tmpArray[0] as? String
        choiceButton1.setTitle(tmpArray[1] as? String, for: .normal)
        choiceButton2.setTitle(tmpArray[2] as? String, for: .normal)
        choiceButton3.setTitle(tmpArray[3] as? String, for: .normal)
    }
    func performSegueToResult() {
        performSegue (withIdentifier: "toResult2View", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult2View"{
            let result2ViewController = segue.destination as! Result2ViewController
            result2ViewController.correctAnswer = self.correctAnser
        }
    }
    
    @IBAction func choiceAnswer(sender:UIButton){
        let tmpArray = quizArray[0] as! [Any]
        if tmpArray[4] as! Int == sender.tag{
            correctAnser = correctAnser + 1
        }
        quizArray.remove(at: 0)
        if quizArray.count == 0{
            performSegueToResult()
        }else{
            choiceQuiz()
        }
        
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
