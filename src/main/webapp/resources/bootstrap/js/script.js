$(function () {
  var navbar = $(".navbar");
  var sort = $(".sort");
  var orderTour = $(".order-tour");
  var contentFilter = $(".content-filter");

  const ITEM_CARD =
    '<div class="card border-0"> \
  <div class="card-header p-0 border-0 bg-light"> \
    <b class="m-0 pl-2" style="font-size: 12px"> \
      Còn 16 ngày | Kỳ nghỉ đẳng cấp 3N2Đ + Phòng ban công hướng \
      biển + Ăn sáng + Tặng bữa ăn / Spa \
    </b> \
  </div> \
  <div class="card-body p-0"> \
    <div \
      class="body-box body-img" \
      style=" \
        background-image: url(https://cdn1.ivivu.com/iVivu/2018/09/11/15/mood_1-4.png); \
      " \
    ></div> \
    <div class="body-box body-info"> \
      <div class="title">\
        <a href="./detail_hotel.html" class="m-0">Dân chơi hotel</a>\
        <span for="star-five">\
          <i class="fas fa-star"></i>\
          <i class="fas fa-star"></i>\
          <i class="fas fa-star"></i>\
          <i class="fas fa-star"></i>\
          <i class="fas fa-star"></i>\
        </span>\
      </div>\
      <div class="stickers">\
        <span class="badge bg-info text-white rounded-1 p-2 m-1"\
          >Bãi Bắc , Bán đảo Sơn Trà - Xem bản đồ</span\
        >\
        <span class="badge bg-info text-white rounded-1 p-2 m-1">\
          Chụp ảnh đẹp\
        </span>\
        <span class="badge bg-info text-white rounded-1 p-2 m-1">\
          Bay lắc\
        </span>\
      </div>\
    </div>\
    <div class="body-box body-price">\
      <b>12.000.000 VND</b>\
      <div class="combo">\
        Classic combo Gồm ăn sáng + bữa trưa / tối + Spa 60 phút / \
        khách\
      </div>\
    </div>\
  </div>\
</div>';

  const WEB = {
    speed: 0, // Tốc độ load web
    screenMoblie: 640, // màn hình mobile
    navIcon: navbar.find(".navbar-icon"),
    navBar: navbar.find(".navbar-nav"),
  };

  const ICON = {
    bar: '<i class="fas fa-bars"></i>',
    times: '<i class="fas fa-times"></i>',
  };

  var TEMP = {
    TEMP_COUNT_NAV: 0, // biến đếm tạm
    TEMP_COUNT_SORT: 0, // biến đếm tạm
    TEMP_LOOP: 3, // số lần lặp data
    TEMP_MONEY_ADULTUS: 1990000, // số tiền người lớn mặc định
    TEMP_MONEY_CHILDREN: 800000, // số tiền trẻ nhở mặc định
    TEMP_FORMAT_MONEY: 3, // định dạng 3 chữ số (VND)
    TEMP_COUNT_SEARCH: 0 // biến đếm tạm
  };

  WEB.navIcon.html(ICON.bar);

  // chức năng cho search fixed ở dạng desktop
  $(".button-toggle").on("click", function () {
    TEMP.TEMP_COUNT_SEARCH++;
    if(TEMP.TEMP_COUNT_SEARCH % 2 == 1) {
      $(".search-fixed").animate({left: `${0}px`})
    }else {
      $(".search-fixed").animate({left: `${-375}px`})
    }
  })

  // chức năng nav của mobile 
  $(".navbar-icon").on("click", function () {
    TEMP.TEMP_COUNT_NAV++;
    func_nav(navbar, TEMP.TEMP_COUNT_NAV, WEB.speed);
  });

  // Chức năng search cho mobile
  $(".sort-icon").on("click", function () {
    TEMP.TEMP_COUNT_SORT++;
    func_sort(".sort-icon", TEMP.TEMP_COUNT_SORT, WEB.speed);
  });

  $(".render-data").on("click", function () {
    // Chỉ tượng trưng >>> thay thế code dưới này bằng ajax để đổ data
    func_loop(contentFilter, ITEM_CARD, TEMP.TEMP_LOOP, ".card");
  });

  // sự kiên giảm dần
  $(".minus").on("click", function () {
    var count = this.closest(".count");
    var bodyItem = this.closest(".body-item");

    var number = Number.parseInt($(count).find(".number").html()) - 1;

    // BUG
    // var moneyAdultus = TEMP.TEMP_MONEY_ADULTUS / number;
    // var moneyChildren = TEMP.TEMP_MONEY_CHILDREN / number;

    if (moneyAdultus == Infinity || number < 0) {
      $(bodyItem).find("#money_adultus").html(0);
      $(bodyItem).find("#money_children").html(0);
    } else {
      $(bodyItem)
        .find("#money_adultus")
        .html(
          new Intl.NumberFormat("vi-VN", {
            maximumSignificantDigits: TEMP.TEMP_FORMAT_MONEY,
          }).format(moneyAdultus)
        );
      $(bodyItem)
        .find("#money_children")
        .html(
          new Intl.NumberFormat("vi-VN", {
            maximumSignificantDigits: TEMP.TEMP_FORMAT_MONEY,
          }).format(moneyChildren)
        );
    }

    fun_calc("-", count, ".number");
  });

  // sự kiện tăng dần
  $(".plus").on("click", function () {
    var count = this.closest(".count");
    var bodyItem = this.closest(".body-item");

    var number = Number.parseInt($(count).find(".number").html()) + 1;

    var moneyAdultus = TEMP.TEMP_MONEY_ADULTUS * number;
    var moneyChildren = TEMP.TEMP_MONEY_CHILDREN * number;

    $(bodyItem)
      .find("#money_adultus")
      .html(
        new Intl.NumberFormat("vi-VN", {
          maximumSignificantDigits: TEMP.TEMP_FORMAT_MONEY,
        }).format(moneyAdultus)
      );
    $(bodyItem)
      .find("#money_children")
      .html(
        new Intl.NumberFormat("vi-VN", {
          maximumSignificantDigits: TEMP.TEMP_FORMAT_MONEY,
        }).format(moneyChildren)
      );

    fun_calc("+", count, ".number");
  });

  //screen
  $(window).on("resize", function () {
    if (this.innerWidth >= WEB.screenMoblie) {
      WEB.navBar.css({ visibility: "visible" });
    } else {
      WEB.navBar.css({ visibility: "hidden" });
    }
  });

  //scroll fixed
  $(window).on("scroll", function () {
    if (this.scrollY >= 5000) {
      orderTour.css({ position: "relative" });
    } else {
      if (this.scrollY > 100) {
        orderTour.css({ position: "fixed", top: "10px" });
      } else {
        orderTour.css({ position: "relative" });
      }
    }
  });



  // function
  let func_nav = function (selector, count, speed) {
    if (count % 2 == 1) {
      navbar.closest(selector).animate({ height: "100%" }, speed);
      WEB.navBar.css({ visibility: "visible" });
      WEB.navIcon.html(ICON.times);
    } else {
      navbar.closest(selector).animate({ height: "12vh" }, speed);
      WEB.navBar.css({ visibility: "hidden" });
      WEB.navIcon.html(ICON.bar);
    }
  };

  
  let func_sort = function (selector, count, speed) {
    if (count % 2 == 1) {
      sort.animate({ left: 0 }, WEB.speed);
      $(selector).animate({ left: 0, top: `${-40}px` }, speed);
    } else {
      sort.animate({ left: `${-100}%` }, WEB.speed);
      $(selector).animate({ left: `${100}%`, top: 0 }, speed);
    }
  };

  // hàm tạo loop data
  // selector -> phần tử cha
  // data -> data
  // loop -> số lần lặp 
  // child -> phần từ con
  let func_loop = function (selector, data, loop, child) {
    for (var i = 0; i < loop; i++) {
      selector.find(child).last().after(data);
    }
  };

  // hàm tính tăng dần và giảm dần
  // calc -> + or -
  // parent -> là cha của phần tử đó
  // selector -> giá trị cần tìm
  let fun_calc = function (calc, parent, selector) {
    var numFirst = $(parent).find(selector).html();
    if (calc == "-") {
      --numFirst;
      if (numFirst < 0) return 0;
      $(parent).find(selector).html(numFirst);
    } else {
      ++numFirst;
      $(parent).find(selector).html(numFirst);
    }
  };

  $(function () {
    // check code here
    console.log();
  });
});
