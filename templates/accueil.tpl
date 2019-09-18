<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../static/style.css">
    <title>HTML5</title>
</head>
<body>
    <header>
        <h1>Ma page web :)</h1>
    </header>
    <p>
        Tentez de deviner le code secret  5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8
    </p>
    <form action="http://localhost:5000/reponse" method="POST">
        <select name="liste_algo" id="liste_algo">
            <option value="md5" name="md5">md5</option>
            <option value="sha1" name="sha1">sha1</option>
            <option value="sha224" name="sha224">sha224</option>
            <option value="sha256" name="sha256">sha256</option>
            <option value="sha384" name="sha384">sha384</option>
            <option value="sha512" name="sha512">sha512</option>
        </select>
        <input type="submit" value="submit" />
    </form>
    <img src="../static/licorne.png" alt="Licorne">
</body>
</html>