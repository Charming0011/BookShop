<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<li class="first"><a href="javascript:searchHot('c语言')">C语言</a></li>
			<li><a href="javascript:searchHot('c++')">c++</a></li>
			<li><a href="javascript:searchHot('JAVA')">JAVA</a></li>
			<li><a href="javascript:searchHot('PYTHON')">PYTHON</a></li>
			<li><a href="javascript:searchHot('算法')">算法</a></li>
			<li><a href="javascript:searchHot('游戏开发')">游戏开发</a></li>
			<li><a href="javascript:searchHot('高等数学')">高等数学</a></li>
			<li><a href="javascript:searchHot('通识教育')">通识教育</a></li>
			<li><a href="javascript:searchHot('哲学')">哲学</a></li>
			<%--<li><a href="javascript:searchHot('自然科学')">自然科学</a></li>--%>
			<li><a href="javascript:searchHot('平面设计')">平面设计</a></li>
			<%--<li><a href="javascript:searchHot('心理学')">心理学</a></li>--%>
			<li><a href="javascript:searchHot('其他')">其他</a></li>
			<li class="last"><input type="text" id="selectname" value="${search_words }" /><a href="javascript:selectname()" >&nbsp;&nbsp;搜索</a></li>
		</ul>
	</div>
</div>