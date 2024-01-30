<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jquery/Step06_ajax.jsp</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
   
   <input type="text" id="inputMsg" placeholder="자료를 입력하세요!!!"/>
   <button id="sendBtn">ajax</button>
   
   <script>

      $("#sendBtn").on("click", function(){
         
         let msg=$("#inputMsg").val();
  //git       
         $.ajax({
            url:"send.jsp",
            method:"post",
            data:"msg="+msg,
            success:function(responseData){
               console.log(responseData);
            }
         });
      });
   </script>
</body>
</html>
