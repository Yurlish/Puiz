//
//  quiz2ViewController.swift
//  Puiz
//
//  Created by clark on R 4/06/01.
//

import UIKit

class quiz2ViewController: UIViewController {
    
    var quiz2Array = [Any]()
    
    var correctAnser: Int = 0
    @IBOutlet var quizTextView: UITextView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    @IBOutlet var maruImageView: UIImageView!
    @IBOutlet var batsuImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quiz2Array.append(["apple","猿","バナナ","りんご",3])
        quiz2Array.append(["bom","ボンド","爆弾","ボタン",2])
        quiz2Array.append(["cat","切る","猫","葛藤",2])
        quiz2Array.append(["die","台","台紙","死",3])
//        quiz2Array.append(["easy","簡単","いい字","インド人",1])
//        quiz2Array.append(["fang","ハンガー","牙","ファンサービス",2])
//        quiz2Array.append(["gost","ゴキブリ","お化け","犯罪者",2])
//        quiz2Array.append(["hunter","とっとこ〜走るよハム太郎〜","ひ〜まわりのたね〜","密猟者",3])
//        quiz2Array.append(["ice","スマホに代わる新型携帯電話","氷","池",2])
//        quiz2Array.append(["jump","飛ぶ","ｺｯｺｯｺｯｺｯｺｯ","週刊誌",1])
//        quiz2Array.append(["kid","近所の城戸さん","子ども","ガキ",2])
//        quiz2Array.append(["lock","ロックバンド","監禁","錠前",3])
//        quiz2Array.append(["must","しなければならない","ムスカ","ムシューダ",1])
//        quiz2Array.append(["note","海苔","ノート","のってる？",2])
//        quiz2Array.append(["octopus","置くとパス","イカ","タコ",3])
//        quiz2Array.append(["piano","ピノ","パイナップル","ピアノ",3])
//        quiz2Array.append(["quiz","こいつ....!","クイズ","恋する",2])
//        quiz2Array.append(["restaurant","レストラン","連想ゲーム","ダンスする",1])
//        quiz2Array.append(["solt","塩","反る","白",1])
//        quiz2Array.append(["table","亀","テーブル","タブレット",2])
//        quiz2Array.append(["utopia","絶望的な世界","失恋☆世界","理想的な世界",3])
//        quiz2Array.append(["video","悪魔","ビデオ","獣",2])
//        quiz2Array.append(["weather","ブレザー","天気","転機",2])
//        quiz2Array.append(["Horseshoe crab","カブトガニ","カブトムシ","兜",1])
//        quiz2Array.append(["yesterday","イェスター・ディ","昨日","一昨日",2])
//        quiz2Array.append(["zone","損","曾根","境",3])
//        quiz2Array.append(["monkey","猿","化け物","鍵",1])
//        quiz2Array.append(["banana","りんご","バナナ","オレンジ",2])
//        quiz2Array.append(["bond","のり","爆弾","ボンド",3])
//        quiz2Array.append(["Cut","切る","猫","葛藤",1])
//        quiz2Array.append(["conflict","切る","猫","葛藤",2])
//        quiz2Array.append(["platform","プラネットフォーム","死","台",3])
//        quiz2Array.append(["Mount","台紙","山","マンモス",1])
//        quiz2Array.append(["Mammoth","ネズミ","マンモス","マモノ",2])
//        quiz2Array.append(["devil","悪魔","ビデオ","獣",1])
//        quiz2Array.append(["angel","天使","角度","怒り",1])
//        quiz2Array.append(["angle","天使","角度","怒り",2])
//        quiz2Array.append(["anger","天使","角度","怒り",3])
//        quiz2Array.append(["beast","悪魔","ビデオ","獣",3])
//        quiz2Array.append(["Beetle","カブトガニ","カブトムシ","兜",2])
//        quiz2Array.append(["helmet","カブトガニ","カブトムシ","兜",3])
//        quiz2Array.append(["Demon","ネズミ","マンモス","マモノ",3])
//        quiz2Array.append(["Guinea pig","モルモット","ハムスター","リス",1])
//        quiz2Array.append(["squirrel","モルモット","ハムスター","リス",3])
//        quiz2Array.append(["turtle","亀","テーブル","タブレット",1])
//        quiz2Array.append(["Tablet","亀","テーブル","タブレット",3])
//        quiz2Array.append(["hamster","モルモット","ハムスター","リス",2])
//        quiz2Array.append(["Condor","コンドル","タカ","ワシ",1])
//        quiz2Array.append(["hawk","コンドル","タカ","ワシ",2])
//        quiz2Array.append(["eagle","コンドル","タカ","ワシ",3])
//        quiz2Array.append(["crow","カラス","スズメ","ハト",1])
//        quiz2Array.append(["sparrow","カラス","スズメ","ハト",2])
//        quiz2Array.append(["pigeon","カラス","スズメ","ハト",3])
//        quiz2Array.append(["Walrus","セイウチ","シロクマ","ペンギン",1])
//        quiz2Array.append(["Polar Bear","セイウチ","シロクマ","ペンギン",2])
//        quiz2Array.append(["penguin","セイウチ","シロクマ","ペンギン",3])
//        quiz2Array.append(["Lion","ライオン","トラ","チーター",1])
//        quiz2Array.append(["Tiger","ライオン","トラ","チーター",2])
//        quiz2Array.append(["Cheetah","ライオン","トラ","チーター",3])
        //        quiz2Array.append(["","","","",])
        //        quiz2Array.append(["","","","",])
        //        quiz2Array.append(["","","","",])
        //        quiz2Array.append(["","","","",])
        //        quiz2Array.append(["","","","",])
        //        quiz2Array.append(["","","","",])
        quiz2Array.shuffle()
        //quiz2Array.append(["","","","",])
        choiceQuiz()
        // Do any additional setup after loading the view.
    }
    func choiceQuiz(){
        let tmpArray = quiz2Array[0] as! [Any]
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
        let tmpArray = quiz2Array[0] as! [Any]
        if tmpArray[4] as! Int == sender.tag{
            //            生回数を増やす
            correctAnser = correctAnser + 1
            maruImageView.image = UIImage(named: "maru.JPG")
            maruImageView.alpha = 1.0
            UIView.animate(withDuration: 1.0) {
                self.maruImageView.alpha = .zero
            }
        }else {
            batsuImageView.image = UIImage(named: "batsu.JPG")
            batsuImageView.alpha = 1.0
            UIView.animate(withDuration: 1.0) {
                self.maruImageView.alpha = .zero
            }
        }
        //        解いた問題をquiz2Arrayから取り除く
        quiz2Array.remove(at: 0)
        
        //    解いた問題の合計があらかじめ設定していた問題数に達したら結果画面ヘ
        if quiz2Array.count == 0{
            performSegueToResult2()
        }else{
            choiceQuiz()
        }
    }

    
    
}
