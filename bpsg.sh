#!/bin/bash
# A sample Bash script, by Ryan

echo -e "\e[36mCreating root folder..."
echo -e "\e[39m"
mkdir html-site
cd html-site
echo -e "\e[36mCreating assets folders..."
echo -e "\e[39m"
mkdir css
mkdir js
mkdir img
echo -e "\e[36mCreating index page..."
echo -e "\e[39m"
touch index.html
cat <<EOT >> index.html
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Plain HTML Site</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- Content goes here! -->


    <!-- jQuery -->
    <script src="js/jquery-3.2.1.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
EOT
echo -e "\e[36mDownloading Bootstrap CSS..."
echo -e "\e[39m"
cd css
wget https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css
echo -e "\e[36mDownloading jQuery and Bootstrap JS..."
echo -e "\e[39m"
cd ..
cd js
wget https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js
wget https://code.jquery.com/jquery-3.2.1.min.js
echo -e "\e[92mDone!"
echo -e "\e[39m"
