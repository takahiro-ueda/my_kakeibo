// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require Chart.min
//= require jquery
//= require rails-ujs
//= require activestorage
//= require_tree .


$(function() {
  $('.content__image').slick({
    arrows: false,
    autoplay: true,
    autoplaySpeed: 0,
    speed: 7000,
    cssEase: "linear",
    pauseOnHover: true
    // dots: true,
    // // アクセシビリティ。左右ボタンで画像の切り替えをできるかどうか
    // accessibility: true,
    // // 自動再生。trueで自動再生される。
    // autoplay: false,
    // // 自動再生で切り替えをする時間
    // autoplaySpeed: 1000,
    // // 自動再生や左右の矢印でスライドするスピード
    // speed: 400,
    // // 自動再生時にスライドのエリアにマウスオンで一時停止するかどうか
    // pauseOnHover: true,
    // // 自動再生時にドットにマウスオンで一時停止するかどうか
    // pauseOnDotsHover: true,
    // // 切り替えのアニメーション。ease,linear,ease-in,ease-out,ease-in-out
    // cssEase: 'ease',
    // // 画像下のドット（ページ送り）を表示
    // dots: false,
    // // ドットのclass名をつける
    // dotsClass: 'dot-class',
    // // ドラッグができるかどうか
    // draggable: true,
    // // 切り替え時のフェードイン設定。trueでon
    // fade: false,
    // // 左右の次へ、前へボタンを表示するかどうか
    // arrows: true,
    // // 無限スクロールにするかどうか。最後の画像の次は最初の画像が表示される。
    // infinite: true,
    // // 最初のスライダーの位置
    // initialSlide: 0,
    // // 画像の遅延表示。‘ondemand’or'progressive'
    // lazyLoad: 'ondemand',
    // // // スライドのエリアにマウスオーバーしている間、自動再生を止めるかどうか。
    // // pauseOnHover: true,
    // // 一度にスライドする数
    // slidesToScroll: 1,
    // // // タッチスワイプに対応するかどうか
    // // swipe: true,
    
  });
});