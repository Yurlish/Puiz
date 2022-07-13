//
//  zukan1ViewController.swift
//  Puiz
//
//  Created by clark on R 4/06/01.
//

import UIKit

class zukan1ViewController: UIViewController {
    var zukan1Array: [Zikan] = []
    @IBOutlet var mondaiLabel:UILabel!
    @IBOutlet var kotaeLabel:UILabel!
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        zukan1Array.append(Zikan(mondai:"アイビー",kotae:"　「永遠の愛」「友情」「不滅」「結婚」「誠実」                                         1/21　別名：ヘデラ、セイヨウキヅタ　科名：ウコギ科　                                  花言葉は、アイビーが他の樹木、岩、石垣などにしっかりつかまって成長することから。　とても丈夫な植物で、日向でも日陰でも育つ。日本の環境では適さない条件はほぼ無い程に育てることは容易。                                   　　　　　　◎広がりすぎないように管理することが育てる上で重要なポイントです。アイビーの品種はなんと１０００種以上もあります。"))
        zukan1Array.append(Zikan(mondai:"アオキ",kotae:"　「初志貫徹」「若く美しく」「変わらぬ愛」「永遠の愛」                                         10/22　別名：青木葉 　科名：ミズキ科　開花期：3月～5月　                                  花色は紫色。花言葉は、季節が変わっても変わらない見た目で、枝の部分まで青々としていることから。秋頃に２㎝ほどの赤い卵型の実を付ける。                                   　　　　　　◎常緑樹は、1年中緑色の葉っぱを茂らせてくれるので、冬でも庭が寂しくなりません。特にアオキは丈夫で、班入りの品種は1株あるだけで庭が明るくなります。耐陰性も高いので、日陰のガーデニングにもおすすめです。"))
        zukan1Array.append(Zikan(mondai:"アカツメクサ",kotae:"「善良で陽気」「豊かな愛」「実直」「勤勉」「上品」                                         4/18　別名：紫詰草、赤クローバー　開花期：5月～8月　                                  アカツメクサの花言葉の由来はアイヌの言い伝えから。イハマという少女と勇者との悲恋の最後にアカツメクサが登場する。シロツメクサより花も葉も大きく、草丈も倍高くなる。花は、30から70個程の小さな花弁が一つになっている。                                   　　　　　　　◎アカツメクサは、以外にも食用となるハーブの一種です。 ドライフラワーにした状態で、ハーブティーとして飲用にされています。"))
        zukan1Array.append(Zikan(mondai:"アガパンサス",kotae:"「恋の訪れ」「ラブレター」「知的な装い」                                                 6/11　科名：ユリ科　開花期：6月～8月　                                                    属名の学名「Agapanthus（アガパンサス）」は、ギリシア語の「agape（愛）」と「anthos（花）」が語源となり、「愛の花」という意味がある。 花言葉は、その「愛の花」という意味のアガパンサスの名前から「恋の訪れ」「ラブレター」と付けられた。「知的な装い」は、淡青紫色の涼しげで繊細な花姿から。                                   　　　　　　　                                                                      ◎ガーデニング初心者でも育てやすく、品種によってサイズや花姿が変わるため、育てる楽しみが多い花です。"))
        zukan1Array.append(Zikan(mondai:"easy",kotae:"簡単"))
        zukan1Array.append(Zikan(mondai:"fang",kotae:"牙"))
        zukan1Array.append(Zikan(mondai:"gost",kotae:"お化け"))
        zukan1Array.append(Zikan(mondai:"hunter",kotae:"密猟者"))
        zukan1Array.append(Zikan(mondai:"ice",kotae:"氷"))
        zukan1Array.append(Zikan(mondai:"jump",kotae:"飛ぶ"))
        zukan1Array.append(Zikan(mondai:"kid",kotae:"子ども"))
        zukan1Array.append(Zikan(mondai:"lock",kotae:"錠前"))
        zukan1Array.append(Zikan(mondai:"must",kotae:"しなければならない"))
        zukan1Array.append(Zikan(mondai:"note",kotae:"ノート"))
        zukan1Array.append(Zikan(mondai:"octopus",kotae:"タコ"))
        zukan1Array.append(Zikan(mondai:"piano",kotae:"ピアノ"))
        zukan1Array.append(Zikan(mondai:"quiz",kotae:"クイズ"))
        zukan1Array.append(Zikan(mondai:"restaurant",kotae:"レストラン"))
        zukan1Array.append(Zikan(mondai:"solt",kotae:"塩"))
        zukan1Array.append(Zikan(mondai:"table",kotae:"テーブル"))
        zukan1Array.append(Zikan(mondai:"utopia",kotae:"理想的な世界"))
        zukan1Array.append(Zikan(mondai:"",kotae:""))
        zukan1Array.append(Zikan(mondai:"Xiphosura",kotae:"カブトガニ"))
//        zukan1Array.append(Zikan(mondai:"",kotae:""))
        setUI()
       
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func setUI(){
        mondaiLabel.text = zukan1Array[index].mondai
        kotaeLabel.text = zukan1Array[index].kotae
    }
    @IBAction func mae(){
        index = index - 1
        setUI()
    }
    @IBAction func tugi(){
        index = index + 1
        setUI()
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
