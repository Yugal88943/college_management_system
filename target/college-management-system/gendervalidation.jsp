<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 <script>
            function send()
            {
                var genders = document.getElementsByName("gender");
                if (genders[0].checked == true) 
                {
                    alert("Your gender is male");
                }
                else if (genders[1].checked == true) 
                {
                    alert("Your gender is female");
                } 
                else 
                {
                    // no checked
                    var msg = '<span style="color:red;">You must select your gender!</span><br /><br />';
                    document.getElementById('msg').innerHTML = msg;
                    return false;
                }
                return true;
            }

            function reset_msg() {
                document.getElementById('msg').innerHTML = '';
            }
        </script>
</head>
<body>

<form action="" method="POST">
            <label>Gender:</label>
            <br />
            <input type="radio" name="gender" value="m" onclick="reset_msg();" />Male
            <br />
            <input type="radio" name="gender" value="f" onclick="reset_msg();" />Female
            <br />
            <div id="msg"></div>
            <input type="submit" value="send>>" onclick="return send();" />
        </form>

</body>
</html>