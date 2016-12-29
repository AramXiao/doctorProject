function Base(){};
Base.prototype = {
		/**
		 * 将服务器端返回的JSON对象转换成js中的对象
		 */
		json : function(/*string*/jsonString) {
			try {
				var isjson = typeof(jsonString) == "object" && Object.prototype.toString.call(jsonString).toLowerCase() == "[object object]" && !jsonString.length;
				return isjson? jsonString:eval('(' + jsonString + ')');
			} catch (ex) {
				return null;
			}
		}
}

//生成base类实例，注册loading事件
var base = null;
$(document).ready(function(){
	base = new Base();
});
