//
//  QuizViewController.swift
//  Puiz
//
//  Created by clark on R 4/05/17.
//

import UIKit

class QuizViewController: UIViewController {

    var quizArray = [Any]()
    
    var correctAnser: Int = 0
    @IBOutlet var quizTextView: UITextView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    @IBOutlet var maruImageView: UIImageView!
    @IBOutlet var batsuImageView: UIImageView!
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
          let tmpArray = quizArray[0] as! [Any]
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
          quizArray.remove(at: 0)
          
          //    解いた問題の合計があらかじめ設定していた問題数に達したら結果画面ヘ
          if quizArray.count == 0{
              performSegueToResult2()
          }else{
              choiceQuiz()
          }
      }

}
