<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="insertCheck.do" method="post">
    <table>
        <tr>
            <td>번호</td>
            <td><input type="text" name="no" id="user_no" placeholder="번호를 입력하세요"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" id="user_name" placeholder="이름을 입력하세요"></td>
        </tr>
        <tr>
            <td><input type="submit" value="확인" onclick=""></td>
        </tr>
    </table>
</form>

<script>
    const $ = (val) => document.querySelector(val);

    function checker(){
        const check = new XMLHttpRequest();
        check.onload = () =>{
            let result = JSON.parse('result');
            if (result == 0){
                alert('정보를 확인하세요');
            }
            console.log($('#user_no').value);
            console.log($('#user_name').value);
        }
        check.open('post','insertCheck.do');
        check.send('no='+$('#user_no').value + '&name='+$('#user_name').value);
    }
</script>
</body>
</html>
