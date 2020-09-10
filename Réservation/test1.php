<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>JavaScript getElementsByName Demo</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


</head>

<body>
    <?php
    if (!isset($_GET['site'])) {
        header('Location:test1.php?site=nancy');
    }

    ?>
    <form class="form-inline">
        <div class="form-group">
            <label for="site">Choix du site : </label>
            <select name="site" id="list">
                <option value="nancy"  <?php if($_GET['site']=='nancy' ){echo'selected';}?>>Nancy</option>
                <option value="metz"  <?php if($_GET['site']=='metz' ){echo'selected';}?>>Metz</option>
            </select>
        </div>
    </form>
    <?php echo $_GET['site']; ?>
    <!-- <select id="select">
        <option value='nancy' <?php if($_GET['site']=='nancy' ){echo'selected';}?>
            >Nancy</option>
        <option value='metz' <?php if($_GET['site']=='metz' ){echo'selected';}?>
            >Metz</option>
       
    </select> -->

</body>
<script>
/*************SELECT Du site */    
    var selectElem = document.getElementById('list');

    selectElem.addEventListener('change', function() {
        var index = selectElem.value;
        console.log(index);
        document.location.href = "test1.php?site=" + index;
    })
</script>

</html>