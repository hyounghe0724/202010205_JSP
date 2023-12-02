<%@ page contentType="text/html;charset=utf-8"%>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../top_menu.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">회원 가입</h1>
        </div>
    </div>
    <div class="container" align="center">
        <div class="col-md-4 col-md-offset-4">
            <h3 class="form-signin-heading">회원 가입</h3>
            <form class="form-signin" action="member_join_process.jsp" method="post">
                <div class="form-group">
                    <label for="username" class="sr-only">아이디</label>
                    <input type="text" class="form-control" placeholder="아이디" name="id" required autofocus>
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">비밀번호</label>
                    <input type="password" class="form-control" placeholder="비밀번호" name="password" required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword" class="sr-only">비밀번호 재입력</label>
                    <input type="password" class="form-control" placeholder="비밀번호 재입력" name="confirmPassword" required>
                </div>
                <div class="form-group">
                    <label for="name" class="sr-only">이름</label>
                    <input type="text" class="form-control" placeholder="이름" name="name" required>
                </div>
                <div class="form-group">
                    <label for="gender" class="sr-only">성별</label>
                    <select class="form-control" name="gender" required>
                        <option value="">성별 선택</option>
                        <option value="남성">남성</option>
                        <option value="여성">여성</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="birth" class="sr-only">이메일</label>
                    <input type="text" class="form-control" placeholder="생일(예: 010101)" name="birth" required>
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">이메일</label>
                    <input type="email" class="form-control" placeholder="이메일" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone" class="sr-only">휴대폰 번호</label>
                    <input type="text" class="form-control" placeholder="휴대폰 번호" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="address" class="sr-only">주소</label>
                    <input type="text" class="form-control" placeholder="주소" name="address" required>
                    <button class="btn btn-lg btn" type="submit"> 제출 하기 </button>
                </div>
            </form>
            <a href="../login/login_user.jsp" class="btn btn-lg btn-primary btn-block" role="button">로그인</a>            
            <a href="../index.jsp" class="btn " role="button"> 홈 으로</a>

        </div>
    </div>
</body>
</html>