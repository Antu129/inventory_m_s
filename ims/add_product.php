<?php
include "header.php";
include "connection.php";
?>

<div>
    <div>
    <h2>Add Product</h2>
    </div>
    <div>
        <form method="post" name="form1">
            <div class="mb-3">
                <label class="form-label">Product Name: </label>
                <input type="text" class="form-control" name="product_name" placeholder="Enter product name" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Product Description</label><br>
                <textarea class="form-control" rows="4" cols="50" name="product_desc" placeholder="Enter product description" required></textarea> 
            </div>
            <div class="mb-3">
                <label class="form-label">Unit: </label>
                <input type="text" class="form-control" name="unit" placeholder="Enter product unit" required>
            </div>
            <div class="mb-3">
                <labelclass="form-label">Unit Price: </label>
                <input type="text" class="form-control" name="unit_price" placeholder="Enter price per unit" required>
            </div>
            <button name="submit1" type="submit" class="btn btn-primary">Submit</button><br><br>
            <div class="alert alert-danger" id="error"  style="display: none;">Product name is already taken. Please try another.</div>
            <div class="alert alert-success" id="success"  style="display: none;">Record inserted sucessfully.</div>        
    </form>
    </div>
</div>

<?php
    if(isset($_POST['submit1'])){
        $count=0;
        $res = mysqli_query($conn, "SELECT * FROM `products` WHERE product_name='$_POST[product_name]' && product_desc='$_POST[product_desc]' && unit='$_POST[unit]' && unit_price='$_POST[unit_price]';");
        $count = mysqli_num_rows($res);
        if($count>0){
?>
                <script type="text/javascript">
                    document.getElementById("success").style.display="none";
                    document.getElementById("error").style.display="block";
                </script>
                
<?php
        }
        else{
          mysqli_query($conn, "INSERT INTO `products` VALUES(NULL, '$_POST[product_name]','$_POST[product_desc]','$_POST[unit]', '$_POST[unit_price]')");
            ?>
            <script type="text/javascript">
                    document.getElementById("success").style.display="block";
                    document.getElementById("error").style.display="none";
                    setTimeout(function(){
                        window.location.href="product.php";
                    },3000);
                </script>
                <?php

        }
    }
?>






<?php
include "footer.php";
?>