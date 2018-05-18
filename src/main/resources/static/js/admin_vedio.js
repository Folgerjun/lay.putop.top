//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});

layui.use('table', function(){
	var table = layui.table;
	
	var $ = layui.$,
	active = {
		    reload: function(){
		      var searchInput = $('#searchInput');
		      //执行重载
		      table.reload('vedioTable', {
		        page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        ,where: {
		        	  vedioName: searchInput.val()
		        }
		      });
		    }
		  };
	
	 //监听工具条
	  table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，demo是table原始容器的属性 lay-filter="对应的值"
	    var data = obj.data //获得当前行数据
	    ,layEvent = obj.event; //获得 lay-event 对应的值
	    var id = data.id; // 获得id参数
	    if(layEvent === 'detail'){
	    	// 打开详情页
	      window.open('/vedio?vedioUrl=' + data.vedioUrl + '&vedioName=' + data.vedioName);
	    } else if(layEvent === 'del'){
	      layer.confirm('真的删除行么', function(index){
	    	layer.close(index);
	        //向服务端发送删除指令
	        $.ajax({
	        	type: "POST",
	            url: "/delVedio",
	            data: {id:id},
	            success: function(mes){
	                        if("fail" == mes) {
	                        	layer.msg('删除失败！');
	                        }else if("success" == mes) {
	                        	layer.msg('删除成功！');
//	                        	obj.del(); //删除对应行（tr）的DOM结构
	                        	window.location.reload();
	                        }
	                  }
	        });
	      });
	    } else if(layEvent === 'edit'){
	      layer.open({
	    	  type: 2,
	    	  title: '编辑',
	    	  area: ['500px', '400px'],
	    	  content: '/formVedio?id=' + id,
	    	  btn: ['修改','取消'],
	    	  yes: function(index){
	    		  // 从弹出框中获取数据
	    		  //当点击‘确定’按钮的时候，获取弹出层返回的值
                  var res = window["layui-layer-iframe" + index].callbackdata();
                  //打印返回的值，看是否有我们想返回的值。
                  var vedioName = res.vedioName,
                  	  vedioType = res.vedioType,
                  	  vedioUrl = res.vedioUrl;
                  var record = {
        	            	id: id,
          	            	vedioName: vedioName,
          	            	vedioType: vedioType,
          	            	vedioUrl: vedioUrl
          	            	};
                  $.ajax({
      	        	type: "POST",
      	            url: "/updVedio",
      	            data: record,
      	            success: function(mes){
      	                        if("fail" == mes) {
      	                        	layer.msg('修改失败！');
      	                        }else if("success" == mes) {
      	                        	layer.alert('修改成功！', function() {
      	        	    			  window.location.reload();
      	        	    			  layer.close(index);
      	        	    		  });
      	                        }
      	                  }
      	        	
      	        });
	            },
	          btn2: function(){
	              layer.close();
	            }
	    	});
	    }
	  });
		  
		  // 点击搜索按钮
		  $('#searchVedio').on('click', function() {
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });
		  // 点击新增按钮
		  $('#addVedio').on('click', function() {
			  layer.open({
		    	  type: 2,
		    	  title: '新增',
		    	  area: ['500px', '400px'],
		    	  content: '/formVedio',
		    	  btn: ['提交','取消'],
		    	  yes: function(index){
		    		  // 从弹出框中获取数据
		    		  //当点击‘确定’按钮的时候，获取弹出层返回的值
	                  var res = window["layui-layer-iframe" + index].callbackdata();
	                  //打印返回的值，看是否有我们想返回的值。
	                  var vedioName = res.vedioName,
	                  	  vedioType = res.vedioType,
	                  	  vedioUrl = res.vedioUrl;
	                  console.log(vedioName + ' ' + vedioType + ' ' + vedioUrl);
	                  
	                  var record = {
	                		  	vedioName: vedioName,
	                		  	vedioType: vedioType,
	          	            	vedioUrl: vedioUrl
	          	            	};
	                  $.ajax({
	      	        	type: "POST",
	      	            url: "/addVedio",
	      	            data: record,
	      	            success: function(mes){
	      	                        if("fail" == mes) {
	      	                        	layer.msg('提交失败！');
	      	                        }else if("success" == mes) {
	      	                        	layer.alert('新增成功！', function() {
	      	        	    			  window.location.reload();
	      	        	    			  layer.close(index);
	      	        	    		  });
	      	                        }
	      	                  }
	      	        });
		            },
		          btn2: function(){
		              layer.close();
		            }
		    	});
		  });
		  
});