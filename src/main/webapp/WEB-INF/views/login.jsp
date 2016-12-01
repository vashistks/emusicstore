<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="login-container">
        <div id="login-box">

            <h2>Login with Username and Password</h2>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <script type="text/javascript">
                    function validate(inputtype)
                    {
                        var a = document.getElementById(inputtype).value;
                        var script = "<script>";
                        var valid = true;
                        if(a.includes(script) == true){
                            alert("Malicious Script typed in! Hack prevented! ");
                        }

                    };

                </script>
                <div class="form-group">
                    <label for="username">User: </label>
                    <input type="text" id="username" name="username" class="form-control" onblur="JavaScript: validate(id)" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" onblur="JavaScript: validate(id)" />
                </div>

                <input type="submit" value="Submit" class="btn btn-default">

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>

        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
