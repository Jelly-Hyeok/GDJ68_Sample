<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
	<style>
        #nav01{
        	height: 60px;
        	line-height: 60px; 
            border: 1px solid black;
            padding-right: 700px;
            text-align: center;
            margin-bottom: 100px;
            font-size: 18px;
        }
        #nav01 a{
            display: inline-block;
            width: 120px;
            text-decoration: none;
        }
        #nav02{
            width: 1000px;
            margin: auto;
        }
        #title{
        	margin-bottom: 30px;
        }
        .contents{
        	border: 1px solid black;
        }
        #noticeTitle{
            position: relative;
            left: 26px;
            width: 803px;
            height: 32px;
        }
        .tableTh{
            width: 80px;
            background-color: bisque;
            text-align: center;
        }
        td{
            padding-left: 10px;
        }
        #butDiv{
            text-align: center;
        }
        #addBtn{
            border-radius: 5px;
            border: none;
            cursor: pointer;
            background-color: bisque;
            left: 570px;
            height: 32px;
        }
    </style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp"></c:import>
	<div id="nav01">
        <a href="/notice/list">공지사항</a>
        <a href="oftenQnA/list">자주찾는 질문</a>
    </div>
    <div id="nav02">
        <div id="title">
            <h2>공지사항 작성</h2>
        </div>
        
        <form action="/notice/add" method="post" id="frm" enctype="multipart/form-data">
            <table>
                <tr>
                    <th class="tableTh">제목</th>
                    <td>
                        <input type="checkbox" id="vitalCheck"> 필독
                        <input type="hidden" id="checkVal" name="vitalCheck">
                        <input type="text" id="noticeTitle" name="noticeTitle">
                    </td>
                </tr>
                <tr>
                    <th class="tableTh">내용</th>
                    <td>
                        <textarea cols="110" rows="30" id="noticeContents" name="noticeContents"></textarea>
                    </td>
                </tr>
                <tr>
                    <th class="tableTh">첨부 파일</th>
                    <td>
                        <input type="file" name="files">
                    </td>
                </tr>
            </table>

            <div id="butDiv">
                <button type="submit" id="addBtn">등록하기</button>
            </div>
        </form>
    </div>
	
	<script>
		// 등록하기
		/* $("#addBtn").click(function() {
			$(location).attr("href", "list");
		}); */
		
		// 필독 체크시
		$("#vitalCheck").click(function(){    
            if($("#vitalCheck").is(":checked") == true){
                $("#checkVal").val("1");
            } else{
                $("#checkVal").val("0");
            }
        });
	</script>
</body>
</html>