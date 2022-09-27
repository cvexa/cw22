<?php
const APIKEY = '5Jl9KyoG0OlqNbubIE3TZTFPT7WBpbEM';
//conversion API => https://apilayer.com/marketplace/fixer-api#endpoints

$location = preg_replace('/\\?.*/', '', $_SERVER['HTTP_REFERER']);
if(isset($_POST['from']) && $_POST['to'] && $_POST['amount']){
    $converted = makeConversion($_POST['to'],$_POST['from'],$_POST['amount']);
    header('Location: ' . $location.'?msg="success, успешно направена конверсия !"&converted[rate]='.$converted['rate'].'&converted[result]='.$converted['result'].'&converted[amount]='.$_POST['amount']);
}else {
    header('Location: ' . $location.'?msg="error, Моля попълнете данните във формата"&data[from]='.$_POST['from'].'&data[to]='.$_POST['to'].'&data[amount]='.$_POST['amount']);
}

function makeConversion($to,$from,$amount): array
{
    $curl = curl_init();
    curl_setopt_array($curl, [
        CURLOPT_URL => "https://api.apilayer.com/fixer/convert?to=".trim($to)."&from=".trim($from)."&amount=".$amount,
        CURLOPT_HTTPHEADER => [
            "Content-Type: text/plain",
            "apikey: ".APIKEY.""
        ],
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET"
    ]);

    $response = curl_exec($curl);
    curl_close($curl);
    if($response) {
        $response = json_decode($response, true);
        $data['rate'] = $response['info']['rate'];
        $data['result'] = $response['result'];
    }
    return $data ?? [];
}

function writeToFile()
{
    $curl = curl_init();
    curl_setopt_array($curl, [
        CURLOPT_URL => "https://api.apilayer.com/fixer/symbols",
        CURLOPT_HTTPHEADER => [
            "Content-Type: text/plain",
            "apikey: ".APIKEY.""
        ],
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET"
    ]);

    $response = curl_exec($curl);

    curl_close($curl);

    $myfile = fopen("currencies.txt", "a") or die("Unable to open file!");

    $txt = $response;
    fwrite($myfile, $txt);
    fclose($myfile);
}
