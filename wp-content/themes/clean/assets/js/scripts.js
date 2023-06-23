/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./blocks/accordion/accordion.js":
/*!***************************************!*\
  !*** ./blocks/accordion/accordion.js ***!
  \***************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _sources_js_functions_slideBlock__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../sources/js/functions/slideBlock */ "./sources/js/functions/slideBlock.js");

var accordion__question = document.querySelectorAll('.accordion__question');
accordion__question.forEach(function (el) {
  el.addEventListener('click', function (event) {
    event.preventDefault();
    var active = el.classList.contains('accordion__question_active');
    accordion__question.forEach(function (second) {
      var next = second.nextElementSibling;
      second.classList.remove('accordion__question_active');
      Object(_sources_js_functions_slideBlock__WEBPACK_IMPORTED_MODULE_0__["slideHide"])(next);
    });

    if (!active) {
      var next = el.nextElementSibling;
      el.classList.add('accordion__question_active');
      Object(_sources_js_functions_slideBlock__WEBPACK_IMPORTED_MODULE_0__["slideShow"])(next);
    }
  });
});

/***/ }),

/***/ "./blocks/arrow/arrow.js":
/*!*******************************!*\
  !*** ./blocks/arrow/arrow.js ***!
  \*******************************/
/*! no static exports found */
/***/ (function(module, exports) {

var arrow = document.querySelector('.arrow-up');

if (arrow) {
  window.addEventListener('scroll', function () {
    if (window.pageYOffset >= arrow.getBoundingClientRect().top) {
      arrow.classList.add('arrow-up--visible');
    } else {
      arrow.classList.remove('arrow-up--visible');
    }
  });
}

/***/ }),

/***/ "./blocks/dev/dev.js":
/*!***************************!*\
  !*** ./blocks/dev/dev.js ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports) {

document.addEventListener('DOMContentLoaded', function () {
  var tabButtons = document.querySelectorAll('.dev__tab-button');
  var tabItems = document.querySelectorAll('.tab-item');
  tabButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      tabButtons.forEach(function (btn) {
        btn.classList.remove('active');
      });
      button.classList.add('active');
      var tabId = button.getAttribute('data-tab');
      tabItems.forEach(function (item) {
        if (item.id === tabId) {
          item.classList.add('active');
        } else {
          item.classList.remove('active');
        }
      });
    });
  });
});

/***/ }),

/***/ "./blocks/header/header.js":
/*!*********************************!*\
  !*** ./blocks/header/header.js ***!
  \*********************************/
/*! no static exports found */
/***/ (function(module, exports) {

var header__burger = document.querySelector('.header__burger');
var header__menu = document.querySelector('.header__menu');

if (header__burger) {
  header__burger.addEventListener('click', function () {
    if (header__burger.classList.contains('header__burger_active')) {
      header__burger.classList.remove('header__burger_active');
      header__menu.classList.remove('header__menu_active');
    } else {
      header__burger.classList.add('header__burger_active');
      header__menu.classList.add('header__menu_active');
    }
  });
}

/***/ }),

/***/ "./sources/js/functions/slideBlock.js":
/*!********************************************!*\
  !*** ./sources/js/functions/slideBlock.js ***!
  \********************************************/
/*! exports provided: slideToggle, slideShow, slideHide */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "slideToggle", function() { return slideToggle; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "slideShow", function() { return slideShow; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "slideHide", function() { return slideHide; });
function slideToggle(e) {
  var time = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 300;

  if (getComputedStyle(e).display == 'none') {
    slideShow(e, time);
  } else {
    slideHide(e, time);
  }
}
function slideShow(e) {
  var time = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 300;
  e.style.overflow = 'hidden';

  if (getComputedStyle(e).display == 'none') {
    e.style.display = 'block';
    var h = +getComputedStyle(e).height.replace('px', "");
    setCss(e, '0px', '0px', '0px', '0px', '0px', '0px', '0px');
    setTimeout(function () {
      e.style.transition = time + 'ms';
      setCss(e, h + 'px');
    }, 0);
    setTimeout(function () {
      e.style.display = 'block';
      setCss(e);
      e.style.overflow = '';
      e.style.transition = '';
    }, time);
  }
}
function slideHide(e) {
  var time = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 300;
  e.style.overflow = 'hidden';

  if (getComputedStyle(e).display != 'none') {
    var h = +getComputedStyle(e).height.replace('px', "");
    e.style.height = h + 'px';
    setTimeout(function () {
      e.style.transition = time + 'ms';
      setCss(e, '0px', '0px', '0px', '0px', '0px', '0px', '0px');
    }, 0);
    setTimeout(function () {
      e.style.display = 'none';
      setCss(e);
      e.style.overflow = '';
      e.style.transition = '';
    }, time);
  }
}

function setCss(e) {
  var h = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : '';
  var pT = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : '';
  var pB = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : '';
  var mT = arguments.length > 4 && arguments[4] !== undefined ? arguments[4] : '';
  var mB = arguments.length > 5 && arguments[5] !== undefined ? arguments[5] : '';
  var bT = arguments.length > 6 && arguments[6] !== undefined ? arguments[6] : '';
  var bB = arguments.length > 7 && arguments[7] !== undefined ? arguments[7] : '';
  e.style.height = h;
  e.style.paddingTop = pT;
  e.style.paddingBottom = pB;
  e.style.marginTop = mT;
  e.style.marginBottom = mB;
  e.style.borderTopWidth = bT;
  e.style.borderBottomWidth = bB;
}

/***/ }),

/***/ "./sources/js/functions/smooth-scroll.js":
/*!***********************************************!*\
  !*** ./sources/js/functions/smooth-scroll.js ***!
  \***********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

document.querySelectorAll('a[href^="#"]').forEach(function (anchor) {
  anchor.addEventListener('click', function (e) {
    e.preventDefault();
    document.querySelector(this.getAttribute('href')).scrollIntoView({
      behavior: 'smooth'
    });
  });
});

/***/ }),

/***/ "./sources/js/scripts.js":
/*!*******************************!*\
  !*** ./sources/js/scripts.js ***!
  \*******************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _blocks_header_header__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../blocks/header/header */ "./blocks/header/header.js");
/* harmony import */ var _blocks_header_header__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_blocks_header_header__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _blocks_accordion_accordion__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../blocks/accordion/accordion */ "./blocks/accordion/accordion.js");
/* harmony import */ var _blocks_dev_dev__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../blocks/dev/dev */ "./blocks/dev/dev.js");
/* harmony import */ var _blocks_dev_dev__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_blocks_dev_dev__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _sources_js_functions_smooth_scroll__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../sources/js/functions/smooth-scroll */ "./sources/js/functions/smooth-scroll.js");
/* harmony import */ var _sources_js_functions_smooth_scroll__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_sources_js_functions_smooth_scroll__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var _blocks_arrow_arrow__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../blocks/arrow/arrow */ "./blocks/arrow/arrow.js");
/* harmony import */ var _blocks_arrow_arrow__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(_blocks_arrow_arrow__WEBPACK_IMPORTED_MODULE_4__);






/***/ }),

/***/ "./sources/styles/admin.scss":
/*!***********************************!*\
  !*** ./sources/styles/admin.scss ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ "./sources/styles/styles.scss":
/*!************************************!*\
  !*** ./sources/styles/styles.scss ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ 0:
/*!**********************************************************************************************!*\
  !*** multi ./sources/js/scripts.js ./sources/styles/styles.scss ./sources/styles/admin.scss ***!
  \**********************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(/*! E:\laragon\www\umind\wp-content\themes\clean\sources\js\scripts.js */"./sources/js/scripts.js");
__webpack_require__(/*! E:\laragon\www\umind\wp-content\themes\clean\sources\styles\styles.scss */"./sources/styles/styles.scss");
module.exports = __webpack_require__(/*! E:\laragon\www\umind\wp-content\themes\clean\sources\styles\admin.scss */"./sources/styles/admin.scss");


/***/ })

/******/ });
//# sourceMappingURL=scripts.js.map