$(document).ready(function(){
  
//  submenu slide
  $('.mainmenu').hover(function(){
    $(this).find('.submenu').stop().slideToggle()
  })
  
  
//  sub01-page bodymenu button 컨트롤
  $('.btnnav button').click(function(){
    $(this).siblings('.btnsub').fadeIn()
  })
  
//  submenu에서 마우스 떠나면 submenu 자체가 사라지는 코딩
//  $('.btnsub').mouseleave(function(){
//    $(this).fadeOut()
//  })
  
//  전체영역(button+ul)에서 마우스 떠나면 submenu가 사라지는효과
  $('.btnnav').mouseleave(function(){
  $(this).find('.btnsub').fadeOut()
  })
  
  
  
})

var imgs=1
var now=0
function slide(){
  now =(imgs==now)?0:now+=1
  $('.imgslide img').eq(now).fadeIn()
  $('.imgslide img').eq(now-1).fadeOut()
}

function start(){
  $('.imgslide img').eq(0).siblings().fadeOut()
  setInterval(slide,3000)
}

start()