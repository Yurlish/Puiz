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
        zukan1Array.append(Zikan(mondai:"アスチルベ",kotae:"「恋の訪れ」「自由」　　　　　　　　　　　　　　　　　　　　　　　　　　　5/12　科名：ユキノシタ科　開花期：5月～8月　　　　　　　　　　　　　　　　　小さな花が集まり、ふんわりと優しい印象のある花。花言葉の「恋の訪れ」は、蕾が開き、ピンクや白のふわふわした花を咲かせる様子から。 梅雨前後にかけて開花。高温多湿な日本の気候に順応し、丈夫で育てやすい。　　　　　　　　　　　　　　　　　　◎欧米では人気があり、花壇によく植えられています。可愛らしい色と花姿で、初夏の庭を明るくしてくれます。丈夫なのでどんな場所でも元気に育ってくれるのも嬉しいですね。"))
        zukan1Array.append(Zikan(mondai:"アセビ",kotae:"「犠牲」「献身」「あなたと二人で旅をしましょう」　　　　　　　　　　　　　　　　　　　　　3/9　別名：アシビ　科名：ツツジ科　　　　　　　　　　　　　　　　　　　　和名のアセビは、葉や茎などに有毒成分を含んでいることから「足しびれ」が転訛したという一説も。 花言葉の「犠牲」「献身」はギリシア神話に由来すると言われている。 日本でも自生する低木で、漢字で馬酔木とあてるように有毒植物として知られている。（口にしなければ問題ない）　　　　　　　　　　　　　　　　　　　　　　　　　　◎野生での自生力が強いため、庭植えや鉢植えの栽培は簡単です。しかし枝葉に毒を含んでいるので、ペットや子供が居る方はご注意を。"))
        zukan1Array.append(Zikan(mondai:"アベリア",kotae:"「強運」「謙虚」「謙譲」　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　7/7　科名：スイカズラ科　開花期：6月～11月　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　花言葉の「強運」は、新しく伸びた枝先に、香りの強い花を長期間咲かせ続ける強さから。「謙虚」「謙譲」の花言葉は、個々の花の小さく慎ましい姿から付けられたと言われている。 幾つかのアベリア属の交配から生まれた花木で、初夏～秋の長期間、白や薄ピンクの小さな花を咲かせる。葉は小さめの緑色で、斑入りや黄金葉の改良種もある。大変丈夫な花木で、刈り込みにも強く公共施設の生垣によく用いられている。"))
        zukan1Array.append(Zikan(mondai:"",kotae:""))
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
