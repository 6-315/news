/*
 * @Author: Marte
 * @Date:   2018-04-10 16:50:37
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-04-25 12:34:37
 */

'use strict';

function Myapi() { // 构造函数

	this.JSON = {
		index : 0,
		lagout : function(thisObj, speed, bh) { // 轮播图初始化
			this.speed = speed;
			var Parent = thisObj,
			imgUL = Parent.children('ul:first'), pointerUL = Parent
					.children('ul:last'), cutBut = Parent.children('a'),
			imgLI = imgUL.children('li'), img = imgLI.find('img'),
			W = img.width(), H = img.height();
			Parent.height(H + Math.abs(bh)).width(W);
			var dW = (Parent.width() - W) / 2,
			length = imgLI.size();
			imgUL.width(W * length).css('left', dW);
			// 函数调用
			this.appendP(Parent, pointerUL, length);
			this.move(imgUL, pointerUL, W, dW, length);
			this.cut(imgUL, cutBut, W, dW, pointerUL, length);
			this.changes(imgUL, pointerUL, W, length, dW);
			// 鼠标滑过暂停与启动
			Parent.hover($.proxy(function() {
				clearInterval(this.moveTimer);
				cutBut.animate({
					opacity : 0.8
				})
			}, this), $.proxy(function() {
				this.move(imgUL, pointerUL, W, dW, length);
				cutBut.animate({
					opacity : 0.2
				})
			}, this));
		},
		appendP : function(P, objU, l) { // 动态增添控制点
			for (var i = 0; i < l; i++) {
				var newi = $('<li></li>');
				if (i == 0) {
					newi.addClass('now');
				}
				objU.append(newi);

			}
			objU.width(objU.find('li:first').outerWidth(true) * l);
			objU.css('left', (P.width() - objU.width()) / 2);

		},
		move : function(imgObj, pUL, w, d, l) { // 自动播放
			this.moveTimer = setInterval($.proxy(function() {
				this.animate(imgObj, w, d);
				this.indexChange(pUL, l, 1);
			}, this), this.speed)
		},
		indexChange : function(obj, l, i) { // 改变计数点
			if (this.index >= l - 1 && i > 0) {
				this.index = 0;
			} else if (this.index <= 0 && i < 0) {
				this.index = l - 1;
			} else {
				this.index += i;
			}
			obj.find('li').eq(this.index).addClass('now').siblings()
					.removeClass('now');
		},
		animate : function(obj, w, d, In) { // 自动播放动画函数
			obj.animate({
				left : -w + d,
			}, $.proxy(function() {
				obj.css('left', d);
				if (w > 0) {
					if (In) {
						obj.append(obj.children('li:lt(' + In + ')'));
						console.log(obj.children('li:lt(' + In + ')'));
					} else {
						obj.append(obj.find('li:first'));
					}
				}
			}, this))
		},
		cut : function(imgObj, C, w, d, pUL, l) { // 左右切换函数
			C.css('top', (imgObj.height() - C.height()) / 5);
			var THIS = this;
			C.on('click', function() {
				if ($(this).hasClass('next')) {
					THIS.animate(imgObj, w, d);
					THIS.indexChange(pUL, l, 1);
				} else {
					imgObj.css('left', -w + d);
					imgObj.prepend(imgObj.find('li:last'));
					THIS.animate(imgObj, 0, d);
					THIS.indexChange(pUL, l, -1);
				}
			});
		},
		changes : function(imgObj, obj, w, l, d) { // 控制点切换
			var THIS = this;
			obj.find('li').on('click', function() {
				var nw = 0;
				var In = 0;
				$(this).addClass('now').siblings().removeClass('now');
				if ($(this).index() < THIS.index) {
					In = (l - THIS.index + $(this).index());
					nw = In * w;
				} else {
					In = ($(this).index() - THIS.index);
					nw = In * w;
				}
				THIS.index = $(this).index()
				THIS.animate(imgObj, nw, d, In);
			})
		}
	};
};

