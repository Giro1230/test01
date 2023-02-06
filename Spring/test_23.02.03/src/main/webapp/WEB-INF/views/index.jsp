<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id" placeholder="아이디를 입력하세요"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="text" name="pw" placeholder="비밀번호를 입력하세요"></td>
        </tr>
        <tr>
            <td><input type="submit" value="로그인"></td>
            <td><input type="button" value="회원가입" onclick="location.href='checkForm'"></td>
        </tr>
    </table>
</form>
</body>
</html>
