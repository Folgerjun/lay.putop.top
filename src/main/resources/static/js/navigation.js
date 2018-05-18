/**
 * 显示QQ二维码
 * 
 * @returns
 */
function showQQImg() {
	  layer.open({
		  type: 2,
    	  title: 'QQ二维码',
    	  area: ['280px', '380px'],
    	  content: '/img/QQ.png'
	  });
  }

/**
 * 显示微信二维码
 * 
 * @returns
 */
function showWeChatImg() {
	  layer.open({
		  type: 2,
		  title: '微信二维码',
		  area: ['280px', '360px'],
		  content: '/img/WeChat.png'
	  });
}

/**
 * 显示微信公众号二维码
 * 
 * @returns
 */
function showGZHImg() {
	  layer.open({
		  type: 2,
		  title: '公众号二维码',
		  area: ['260px', '310px'],
		  content: '/img/GZH.jpg'
	  });
}

/**
 * 显示我的信息
 * 
 * @returns
 */
function showMe() {
	  layer.open({
		  type: 2,
		  title: 'who i am ?',
		  area: ['201px', '245px'],
		  content: '/img/me.jpg'
	  });
}