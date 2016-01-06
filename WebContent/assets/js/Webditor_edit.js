var isDrawing = false;
var isResizing = false;
var isComponent = false;
var startComponentX = 0;
var startComponentY = 0;
var zIndex = 100;
var $components = null;
var $target = null;

$(document).ready(function(){
   init();
   initEvent();
});

function init(){
   $components = $(".component");
}

function initEvent(){
   $(document).on("mousedown", function(e){
      // component인지 확인
      if($(this).hasClass("logo")){
         drawingMode();
      }
   })

   // 마우스 움직일 때
   $(document).on("mousemove", function(e){
      showTag();
      if(isDrawing == true){
         // 기본 기능 취소
         e.preventDefault();

         // 문서에서 마우스 위치 알아내기
         var endX = e.pageX - startComponentX;
         var endY = e.pageY - startComponentY;

         // 클릭한 컴포넌트의 위치를 마우스 위치로 설정
         $target.offset({
            left : endX,
            top : endY
         })
      }
   })

   $(document).on("mouseup", function(e){
      // 드래그 초기화
      if(isComponent == true){
         $target = null;
         isComponent = false;
      }else{
         resizingMode();
      }
      
   })

   $components.on("mousedown",function(e){
      // 처음 컴포넌트 선택 했을 때
      $target = $(this).clone(false).appendTo("#sectionMain");
      // $target = $(this).clone(true).insertAfter(this);
      $target.removeClass("logo");
      $target.addClass("loadComponent");

      isComponent = true;
      isDrawing = true;
      // 드래그 대상을 최상위로 만들기 위해 index 값 조절
      zIndex++;

      $target.css({
         "position" : absolute,
         "z-Index" : 'zIndex',
         "left" : 0,
         "top" : 0
      })
      // 시작 위치 값 정하기
      setStartPosition(e);
   })

   $(document).on("mousedown", ".loadComponent", function(){
      // 드래그 대상을 최상위로 만들기 위해 index 값 조절
      zIndex++;

         $(this).resizable({ 
            // handles: "all",
            // autoHide: true,
            // containment: "#sectionMain"
          })
         .parent()
         .css({
            "position" : 'absolute',
            "z-Index" : 'zIndex'
         })
         .draggable({
            containment: "#sectionMain"
         });       
   })
}

function showTag(){
   var getText = $("#sectionMain").html();
   $("#sectionCode").text("");
   $("#sectionCode").text(getText);
}

function setStartPosition(e){
   var offset = $target.offset();
   startComponentX = e.pageX - offset.left;
   startComponentY = e.pageY - offset.top;
}


function drawingMode(){
   isResizing = false;
   isDrawing = true;
}

function resizingMode(){
   isResizing = true;
   isDrawing = false;
}

function clearMode(){
   isResizing = false;
   isDrawing = false;
}