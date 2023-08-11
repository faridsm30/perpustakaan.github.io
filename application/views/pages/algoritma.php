<!DOCTYPE html>
<html>
<head>
    <title>Pencarian Buku</title>
</head>
<body>

<div class="row" style="margin-bottom:10px">
    <div class="col-md-6">
        <h3>Perhitungan Algoritma KMP</h3>
    </div>
</div>

<form method="GET" action="">
    <label for="keyword">Kata Kunci: </label>
    <input type="text" id="keyword" name="cari" value="<?= isset($_GET['cari']) ? $_GET['cari'] : '' ?>">
    <button type="submit">Cari</button>
</form>

<?php
if (isset($_GET['cari'])) {
    $keyword = $_GET['cari'];

    // Fungsi untuk menghasilkan tabel lompatan untuk algoritma KMP
    function generateLPSArray($pattern, &$lps) {
        $length = 0;
        $lps[0] = 0;

        $i = 1;
        while ($i < strlen($pattern)) {
            if ($pattern[$i] == $pattern[$length]) {
                $length++;
                $lps[$i] = $length;
                $i++;
            } else {
                if ($length != 0) {
                    $length = $lps[$length - 1];
                } else {
                    $lps[$i] = 0;
                    $i++;
                }
            }
        }

        // Menampilkan hasil tabel lompatan
        echo "Tabel Lompatan (LPS): ";
        foreach ($lps as $value) {
            echo $value . " ";
        }
        echo "<br>";
    }

    // Fungsi untuk melakukan pencarian menggunakan algoritma KMP
    function searchUsingKMP($text, $pattern) {
        $textLength = strlen($text);
        $patternLength = strlen($pattern);

        $lps = array_fill(0, $patternLength, 0);
        generateLPSArray($pattern, $lps);

        $i = $j = 0;

        while ($i < $textLength) {
            if ($pattern[$j] == $text[$i]) {
                $i++;
                $j++;
            }

            if ($j == $patternLength) {
                echo "Pola ditemukan pada indeks: " . ($i - $j) . "<br>";
                return true; // Kata kunci ditemukan
            } elseif ($i < $textLength && $pattern[$j] != $text[$i]) {
                if ($j != 0) {
                    $j = $lps[$j - 1];
                } else {
                    $i++;
                }
            }
        }

        echo "Pola tidak ditemukan dalam teks.<br>";
        return false; // Kata kunci tidak ditemukan
    }

    // Data daftar buku palsu
    $bookList = array(
        "Buku Pemrograman",
        "Buku Matematika",
        "Buku Sains",
        "Buku Sejarah",
        "Buku Seni",
        "Sosial"
    );

    // Melakukan pencarian menggunakan metode searchUsingKMP
    $foundBooks = array();
    foreach ($bookList as $book) {
        if (searchUsingKMP($book, $keyword)) {
            $foundBooks[] = $book;
        }
    }

    if (!empty($foundBooks)) {
        echo "<h4>Hasil Pencarian:</h4>";
        foreach ($foundBooks as $foundBook) {
            echo "Judul Buku: " . $foundBook . "<br>";
        }
    } else {
        echo "Kata kunci tidak ditemukan dalam data buku.";
    }
}
?>

</body>
</html>
