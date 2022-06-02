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

        quizArray.append(["猿も木","を斬る","から落ちる","ウキッウキキッウッキー！",2])
        quizArray.append(["WARNINGの意味は？","ワニャー","危険","ワニって美味しいよ",1])
        quizArray.append(["眠くなると","手足が動かなくなる","ヴォぉぉぉ","目が開かなくなる",3])
        quizArray.append(["環境破壊は","ダメゾイ","楽しいゾイ","気持ちいゾイ",3])
        quizArray.append(["明日の次は","あさって","しあさって","らいねん",1])
        quizArray.append(["まっくろくろすけ","出てくんなー","出ておいで〜","タピオカパン",2])
        quizArray.append(["眠くなると","体が重くなる","動きが鈍くなる","眠くなる",2])
        quizArray.append(["寿司は","アメリカの文化","インドの文化","日本の文化",3])
        quizArray.append(["ニンジンは英語で","ninjin","carrot","rabbit's foods",2])
        quizArray.append(["ぶたに","肉まん","小判","真珠",3])
        quizArray.append(["猫に","こたつ","小判","毛糸",2])
        quizArray.append(["馬の耳に","ニンジン","きゅうり","念仏",2])
        quizArray.append(["作成者の今日のお昼ご飯は","ステーキ","パスタ","冷やし中華",4])
        quizArray.append(["作成者が好きな歌手グループは？","X-japan","一世風靡セピア","SOPHIA",3])
        quizArray.append(["GW前に起きた最悪の出来事は？","新たなアレルギー発覚","家族にコロナが出た","財布なくす",2])
        quizArray.append(["せんせー、おやつはバナナに入りますかぁ？","入ります","あなたはまず日本語を学びなさい","入りません",2])
        quizArray.append(["ゴリラの学名は？","ウホッウホホウホッウホッ","ゴリラゴリラゴリラ","GODRILLA",2])
        quizArray.append(["作成者が今bookoffで注文した物と個数は？","本20冊","本5冊＋CD5タイトル＋DVD2タイトル","CD10タイトル＋本１冊",3])
        quizArray.append(["作成者が英語の授業で有名人のプロフィールを書けと言われて書いた人物とは？","ふなっしー","ロムスカ・パロ・ウル・ラピュタ","ルンパッパ",2])
        quizArray.append(["believeの意味は？","希望","信じる","寿司食べたい",2])
        quizArray.append(["今日の気分は？","眠い","元気","オネェチャァァァァン!!!",1])
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
       performSegue (withIdentifier: "toResultView", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView"{
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.correctAnswer = self.correctAnser
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
