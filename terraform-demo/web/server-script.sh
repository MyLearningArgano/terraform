#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Style the header */
.header {
  padding: 80px;
  text-align: center;
  background: #1abc9c;
  color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}
</style>
</head>
<body>

<div class="header">
<h1>Hello World from $(hostname -f)</h1>
  <h1>My Website</h1>
  <p>A website created by me.</p>
</div>

</body>
</html>" > /var/www/html/index.html