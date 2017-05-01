$(function(){
if($('.nav>ul>li').hasClass('selected')){
$('.selected').addClass('active');
var currentleft=$('.selected').position().left+"px";
var currentwidth=$('.selected').css('width');
$('.lamp').css({"left":currentleft,"width":currentwidth});
}
else{
  $('.nav>ul>li').first().addClass('active');
  var currentleft=$('.active').position().left+"px";
var currentwidth=$('.active').css('width');
$('.lamp').css({"left":currentleft,"width":currentwidth});
}
$('.nav>ul>li').hover(function(){
  $('.nav ul li').removeClass('active');
  $(this).addClass('active');
var currentleft=$('.active').position().left+"px";
var currentwidth=$('.active').css('width');
$('.lamp').css({"left":currentleft,"width":currentwidth});
},function(){
if($('.nav>ul>li').hasClass('selected')){
$('.selected').addClass('active');
var currentleft=$('.selected').position().left+"px";
var currentwidth=$('.selected').css('width');
$('.lamp').css({"left":currentleft,"width":currentwidth});
}
else{
  $('.nav>ul>li').first().addClass('active');
  var currentleft=$('.active').position().left+"px";
var currentwidth=$('.active').css('width');
$('.lamp').css({"left":currentleft,"width":currentwidth});
}
});
});

$(function(){
if($('.nav-1>ul>li').hasClass('selected')){
$('.selected').addClass('active-1');
var currentleft=$('.selected').position().left+"px";
var currentwidth=$('.selected').css('width');
$('.lamp-1').css({"left":currentleft,"width":currentwidth});
}
else{
  $('.nav-1>ul>li').first().addClass('active-1');
  var currentleft=$('.active-1').position().left+70+"px";
var currentwidth=$('.active-1').css('width');
$('.lamp-1').css({"left":currentleft,"width":currentwidth});
}
$('.nav-1>ul>li').hover(function(){
  $('.nav-1 ul li').removeClass('active-1');
  $(this).addClass('active-1');
var currentleft=$('.active-1').position().left+"px";
var currentwidth=$('.active-1').css('width');
$('.lamp-1').css({"left":currentleft,"width":currentwidth});
},function(){
if($('.nav-1>ul>li').hasClass('selected')){
$('.selected').addClass('active');
var currentleft=$('.selected').position().left+"px";
var currentwidth=$('.selected').css('width');
$('.lamp-1').css({"left":currentleft,"width":currentwidth});
}
else{
  $('.nav-1>ul>li').first().addClass('active-1');
  var currentleft=$('.active-1').position().left+70+"px";
var currentwidth=$('.active-1').css('width');
$('.lamp-1').css({"left":currentleft,"width":currentwidth});
}
});
});