# HTML file
$htmlContent = @"
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script type="text/javascript" src="script.js"></script>
  </head>
  <body>
    <header>
      <nav>
        < a href=" ">Home</ a> |
        < a href="#">About</ a> |
        < a href="#">Contact</ a>
      </nav>
    </header>
    <h1>Welcome to My Website</h1>
    <form>
      <label for="name">Name:</label>
      <input type="text" id="name" name="name">
      <br><br>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email">
      <br><br>
      <input type="submit" value="Submit">
    </form>
    <footer>
      Copyright  My Website
    </footer>
  </body>
</html>
"@
Set-Content -Path "index.html" -Value $htmlContent

# CSS file
$cssContent = @"
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}
header {
  background-color: lightblue;
  padding: 20px;
  text-align: center;
}
nav a {
  color: white;
  padding: 10px 20px;
  text-decoration: none;
}
h1 {
  margin: 20px 0;
  text-align: center;
}
form {
  margin: 20px auto;
  width: 400px;
}
label, input {
  display: block;
  margin: 10px 0;
  width: 100%;
}
input[type="submit"] {
  background-color: lightblue;
  border: none;
  color: white;
  padding: 10px 20px;
}
footer {
  background-color: lightblue;
  bottom: 0;
  position: fixed;
  text-align: center;
  width: 100%;
}
"@
Set-Content -Path "style.css" -Value $cssContent

# JavaScript file
$jsContent = @"
console.log("Welcome to My Website!");
"@
Set-Content -Path "script.js" -Value $jsContent
