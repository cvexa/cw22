<!DOCTYPE html>
<html lang="bg">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<div class="content text-center">
    <table class="table table-striped mt-5">
        <thead>
            <tr>
                <th scope="col">1</th>
                <th scope="col">2</th>
                <th scope="col">3</th>
                <th scope="col">4</th>
                <th scope="col">5</th>
                <th scope="col">6</th>
                <th scope="col">7</th>
                <th scope="col">8</th>
                <th scope="col">9</th>
                <th scope="col">10</th>
            </tr>
        </thead>
        <tbody>
            <?php
                for ($o = 1;$o <= 10;$o ++){
                    echo "<tr>";
                    for ($i = 1; $i <= 10; $i ++){
                        echo "<td>".$o." * ".$i." = <span class='result'>".$o*$i."</span></td>";
                    }
                    echo "</tr>";
                }
            ?>
        </tbody>
    </table>
</div>
<div class="arrays mt-5">
    <?php
    $data = [];
    $data[] = '2';

    echo "<pre>";
    print_r($data);
    echo "</pre>";
    ?>
</div>
</body>
</html>

