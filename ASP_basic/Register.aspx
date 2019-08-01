<html>
    <head><title>Registration html</title>
        <script language="javascript" type="text/javascript">
            function validate()
            {
                var email = document.getElementById("email");
                if (email.value == "")
                {
                    alert("Please enter username!");
                    email.focus();
                    return false;
                }
                var pwd = document.getElementById("pwd");
                if (pwd.value == "")
                {
                    alert("Please enter password!");
                    pwd.focus();
                    return false;
                }
                var pwd2 = document.getElementById("pwd2");
                if (pwd.value != pwd2.value)
                {
                    alert("Passwords do not match!");
                    pwd2.focus();
                    return false;
                }
                return true;
            }

        </script>

    </head>
    <body style="background-color:#eeeeee;font-size:150%">
        <form action="register.aspx" method="post" id="form1"  onsubmit="return validate()">
            <h2>Registration</h2>
            <table>
                <tr> 
                    <td>Email Address</td>
                    <td><input id="email" type="text"  size="30"/></td>

                </tr>
                <tr> 
                    <td>Password </td>
                    <td><input id="pwd" type="password" />

                    </td>

                </tr>
                <tr> 
                    <td>Re-enter password</td>
                    <td><input id="pwd2" type="password" /></td>

                </tr>
                <tr> 
                    <td>Occupation</td>
                    <td>
                        <select id="Select1" name="occup" >
                        <option selected="selected" value="1">Student</option>
                        <option value="2">Employee</option>
                        <option value="3">House Wife</option>
                        <option value="4">Others</option>

                        </select>

                    </td>

                </tr>

        <tr>
            <td>Gender
                <td>
                <input type="radio" checked="true" id="rbMale" name="gender">Male</input>  
                <input type="radio" id="rdFemale" name="gender">Female</input>

                      </td>   

        </tr>
                <tr>
                    <td>Subscribe To NewLetter</td>
                    <td>
                        <input name="subscribe" id="cbSubscribe" type="checkbox" />

                    </td>

                </tr>

            </table>
            <p/>
            <input id="btnSubmit" type="submit" value="Register" />

        </form>

    </body>

</html>