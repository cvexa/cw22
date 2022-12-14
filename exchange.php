<?php
include('php/includes/header.php');
include('php/includes/dbOperations.php');
?>

<body id="inner_page" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

    <!-- LOADER -->
    <div id="preloader">
        <div class="loader">
            <img src="images/loader.gif" alt="#" />
        </div>
    </div>
    <!-- end loader -->
    <!-- END LOADER -->

    <?php
        include('php/includes/navigation.php')
    ?>

    <!-- Start Banner -->
    <div class="section inner_page_banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner_title">
                        <h3>Exchange</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Banner -->
    
    <!-- section -->
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="full text_align_right_img">
                        <img src="images/img1.png" alt="#" />
                    </div>
                </div>
                <div class="col-md-6 layout_padding">
                    <div class="full paddding_left_15">
                        <div class="heading_main text_align_left">
                           <h2><span class="theme_color">Exchange</span> your currency</h2>    
                        </div>
                    </div>
                    <div class="full paddding_left_15">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                    </div>
                    <div class="full paddding_left_15">
                        <?php
                            if(isset($_GET['msg'])){
                                echo "<p class='text-center'>".$_GET['msg']."</p>";
                            }
                            $db = new DBOperations();
                            $currencies = $db->getAllCurrencies();
                        ?>
                        <form method="post" class="col-12" action="./php/exchange.php" id="exchange-from" style="gap:20px">
                            <select name="from" id="from" class="col-12 mt-2">
                                <?php foreach($currencies as $currency){ ?>
                                    <option value="<?= $currency['short_code']; ?>"
                                        <?= isset($_GET['data']['from']) && $_GET['data']['from'] == $currency['short_code']? 'selected': ''?>
                                    >
                                        <?= $currency['short_code']; ?> / <?= $currency['description']; ?>
                                    </option>
                                <?php }; ?>
                            </select>
                            <select name="to" id="to" class="col-12 mt-2">
                                <?php foreach($currencies as $currency){ ?>
                                    <option value="<?= $currency['short_code']; ?>"
                                        <?= isset($_GET['data']['to']) && $_GET['data']['to'] == $currency['short_code']? 'selected': ''?>
                                    >
                                        <?= $currency['short_code']; ?> / <?= $currency['description']; ?>
                                    </option>
                                <?php }; ?>
                            </select>
                            <input type="number" class="col-12 mt-2" name="amount" placeholder="????????????????????" value="<?= $_GET['data']['amount'] ?? '' ?>">
                            <button class="btn btn-success col-4 mt-2" style="margin-left:10rem" type="submit">????????????</button>
                        </form>
                        <?php if(isset($_GET['converted'])) {
                            echo '<div class="converted_data mt-2 text-center" style="background-color: #95ffa8">????????: '
                                . $_GET['converted']['rate'] .
                                '<br/>????????????????????: '
                                . $_GET['converted']['amount'] .
                                '<br/>????????????????: '
                                . $_GET['converted']['result'] .
                                '</div>';
                        } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end section -->
<?php
include('php/includes/footer.php');
?>