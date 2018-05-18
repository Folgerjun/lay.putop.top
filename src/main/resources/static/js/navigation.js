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
