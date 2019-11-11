$(function(){
  $('.inform').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
    var data = $('.inform').val(); // val()でフォームのvalueを取得(数値)
    var profit = Math.round(data * 0.9)  // 手数料計算を行う｡dataにかけているのが0.9なのは単に引きたい手数料が10%のため｡
    var fee = (data - profit) // 入力した数値から計算結果(profit)を引く｡それが手数料となる｡

    if (data >= 300 && data <=9999999 ) {
      
    $('.rig').html(fee) //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
    $('.rig').prepend('¥') // 手数料の前に¥マークを付けたいので
    $('.rig_2').html(profit)
    $('.rig_2').prepend('¥')
    $('#price').val(profit) // 計算結果を格納用フォームに追加｡もし､入力値を追加したいのなら､今回はdataを引数に持たせる｡
      if(profit == '') {   // もし､計算結果が''なら表示も消す｡
      $('.rig_2').html('-');
      $('.rig').html('-');
    }

    } else {
      $('.rig_2').html('-');
      $('.rig').html('-');
      $(".rig").css(
        "font-size" , "14px"
      )
      $(".rig_2").css(
        "font-size" , "16px"
      )
    }
  })
});