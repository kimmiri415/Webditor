<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	if (session.getAttribute("email") == null) {
		response.sendRedirect("index.jsp");
	} 
%>

<%String email = (String)session.getAttribute("email");%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>

   <link rel="stylesheet" type="text/css" href="assets/css/MainStyle.css">


<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script><link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<script type="text/javascript" src="assets/js/Webditor_edit.js"></script>

   

   <title>Webditer</title>

</head>
<body>
   <header>

         <ul id="headerProject">
            <li>프로젝트</li>
         </ul>

          <ul id="headerLogout">
            <a href="logout.jsp" target="_self"><li>로그아웃</li></a>
         </ul>
      <a href="projectList.jsp" target="_self"><img src="assets/img/mainLogo.png"  height="60px" width="200px" ></a>
   </header>

   <aside id="asidePreview">
         <div class="previewPage">
            <span class="previewPageNum">1.</span>
            <div class="previewSquare"></div>   
            <pre class="previewTitle">Untitled</pre>
         </div>

   </aside>

   <div class="middle">
      <aside id="asideTools">
         <pre>background</pre>
         <ul>
            <li><div><img class="component" src="assets/img/background/back1.png"><pre>배경1</pre></div></li>
            <li><div><img class="component" src="assets/img/background/back2.png"><pre>배경2</pre></div></li>
            <li><div><img class="component" src="assets/img/background/back3.png"><pre>배경3</pre></div></li>
            <li><div><img class="component" src="assets/img/background/back4.png"><pre>배경4</pre></div></li>
            <li><div><img class="component" src="assets/img/background/back5.png"><pre>배경5</pre></div></li>
            <li><div><img class="component" src="assets/img/background/back6.png"><pre>배경6</pre></div></li>
            <li><div><img class="component" src="assets/img/background/back7.png"><pre>배경7</pre></div></li>
         </ul>

        <pre>button</pre>
         <ul>
            <li><div><img class="component" src="assets/img/button/btn1.png"><pre>버튼1</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn2.png"><pre>버튼2</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn3.png"><pre>버튼3</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn4.png"><pre>버튼4</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn5.png"><pre>버튼5</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn6.png"><pre>버튼6</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn7.png"><pre>버튼7</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn8.png"><pre>버튼8</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn9.png"><pre>버튼9</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn10.png"><pre>버튼10</pre></div></li>

            <li><div><img class="component" src="assets/img/button/btn11.png"><pre>버튼11</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn12.png"><pre>버튼12</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn13.png"><pre>버튼13</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn14.png"><pre>버튼14</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn15.png"><pre>버튼15</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn16.png"><pre>버튼16</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn17.png"><pre>버튼17</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn18.png"><pre>버튼18</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn19.png"><pre>버튼19</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn20.png"><pre>버튼20</pre></div></li>

            <li><div><img class="component" src="assets/img/button/btn21.png"><pre>버튼21</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn22.png"><pre>버튼22</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn23.png"><pre>버튼23</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn24.png"><pre>버튼24</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn25.png"><pre>버튼25</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn26.png"><pre>버튼26</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn27.png"><pre>버튼27</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn28.png"><pre>버튼28</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn29.png"><pre>버튼29</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn30.png"><pre>버튼30</pre></div></li>

            <li><div><img class="component" src="assets/img/button/btn31.png"><pre>버튼31</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn32.png"><pre>버튼32</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn33.png"><pre>버튼33</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn34.png"><pre>버튼34</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn35.png"><pre>버튼35</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn36.png"><pre>버튼36</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn37.png"><pre>버튼37</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn38.png"><pre>버튼38</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn39.png"><pre>버튼39</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn40.png"><pre>버튼40</pre></div></li>

            <li><div><img class="component" src="assets/img/button/btn41.png"><pre>버튼41</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn42.png"><pre>버튼42</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn43.png"><pre>버튼43</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn44.png"><pre>버튼44</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn45.png"><pre>버튼45</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn46.png"><pre>버튼46</pre></div></li>
            <li><div><img class="component" src="assets/img/button/btn47.png"><pre>버튼47</pre></div></li>
         </ul>
      </aside>

      <div id="middleSection">
         <section id="sectionMain">
            

         </section>
         
         <section id="sectionCode">
         </section>
      </div>
   </div>

</body>
</html>