<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="insert" method="post">
    <table>
        <tr>
            <td>번호</td>
            <td><input type="text" name="no" readonly="${member.no}"></td>
        </tr>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id" id="user_id" placeholder="아이디를 입력하세요"></td>
            <td><button type="button" onclick="idChecker()">test</button></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="pw" placeholder="비밀번호를 입력하세요"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" readonly="${member.name}"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="tel" placeholder="전화번호를 입력하세요"></td>
        </tr>
        <tr>
            <td><input type="submit" value="회원가입"></td>
            <td><input type="reset" value="다시하기"></td>
        </tr>
    </table>
</form>

<script>
    function idChecker() {
        const $ = (val) => document.querySelector(val);
        const checker = new XMLHttpRequest();
        checker.onload = () =>{
            let result = ${result};
            alert(result);
            if (result != 1){
                alert('사용가능한 아이디입니다.');
            } else {
                alert('중복된 아이디 입니다.');
            }
        }

        let id = $('#user_id').value;

        checker.open('get','idCheck.do?id='+id)
        checker.send();
    }
</script>
</body>
</html>
