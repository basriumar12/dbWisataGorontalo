<?php
include "koneksi.php";

$respon = array();

if (isset($_GET["kata"])) {
    $kata = $_GET['kata'];
	
	$wisata = array();
    $result = mysql_query("SELECT *FROM wisata WHERE nama LIKE '%".$kata."%' or jenis LIKE '%".$kata."%'");

    if (!empty($result)) {
        if (mysql_num_rows($result) > 0) {
			$respon["sukses"] = 1;
            $respon["wisata"] = array();
            while($res = mysql_fetch_array($result)){
				$wisata["id"] = $res["id"];
				$wisata["nama"] = $res["nama"];
				$wisata["jenis"] = $res["jenis"];
				$wisata["alamat"] = $res["alamat"];
				$wisata["latitude"] = $res["latitude"];
				$wisata["longitude"] = $res["longitude"];
				$wisata["keterangan"] = $res["keterangan"];
				
				array_push($respon["wisata"], $wisata);
            }

            // memprint/mencetak JSON respon
            echo json_encode($respon, JSON_UNESCAPED_SLASHES);
        } else {
            // tidak ada wisata (kecil dari nol)
            $respon["sukses"] = 0;
            $respon["wisata"] = "Data Kosong";

            // memprint/mencetak JSON respon
            echo json_encode($respon);
        }
    } else {
        // jika query tidak tidak meghasilkan data (tidak ada wisata)
        $respon["sukses"] = 0;
        $respon["wisata"] = "No Data";

        // memprint/mencetak JSON respon
        echo json_encode($respon);
    }
} else {
    // jika data tidak terisi/tidak terset
    $respon["sukses"] = 0;
    $respon["wisata"] = "data belum terisi";

    // memprint/mencetak JSON respon
    echo json_encode($respon);
}
?>