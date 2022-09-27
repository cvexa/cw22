<?php

class DBConnect
{
    private mysqli|null|false $conn;

    public function __construct()
    {
        $this->conn = mysqli_connect('localhost', 'root', '', 'exchange');
    }

    function getAllCurrencies(): array
    {
        $w = "SELECT * FROM currencies";
        $result = mysqli_query($this->conn, $w);
        if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)){
                $data[] = $row;
            }
        }
        return $data ?? [];
    }

    public function insertCurrencies($short_code, $description): bool
    {
        $sql = "INSERT INTO currencies (short_code, description	) VALUES ('$short_code','$description')";
        if ($this->conn->query($sql) === TRUE) {
            return true;
        }
        return false;
    }
}
