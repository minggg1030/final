
// 下方是滑動式圖片
var slides = document.querySelectorAll(".slide"); // 取得所有的輪播項目
var currentSlideIndex = 0; // 目前顯示的輪播項目索引
var slideInterval = setInterval(nextSlide, 3000); // 設定輪播間隔為3秒

function showSlide(index) {
  slides[currentSlideIndex].classList.remove("active"); // 移除目前顯示項目的active類別
  currentSlideIndex = index; // 更新目前顯示的項目索引
  slides[currentSlideIndex].classList.add("active"); // 添加新的active類別以顯示該項目
}

function nextSlide() {
  var nextSlideIndex = (currentSlideIndex + 1) % slides.length; // 計算下一個項目的索引
  showSlide(nextSlideIndex); // 顯示下一個項目
}

function previousSlide() {
  var previousSlideIndex = (currentSlideIndex - 1 + slides.length) % slides.length; // 計算上一個項目的索引
  showSlide(previousSlideIndex); // 顯示上一個項目
}

slides.forEach(function(slide, index) {
  slide.addEventListener("click", function() { // 當項目被點擊時觸發事件
    var nextSlideIndex = (currentSlideIndex + 1) % slides.length; // 計算下一個項目的索引
    showSlide(nextSlideIndex); // 顯示下一個項目
    clearInterval(slideInterval); // 停止原有的輪播計時器
    slideInterval = setInterval(nextSlide, 3000); // 啟動新的輪播計時器
  });
});

// 滑動式圖片到此end