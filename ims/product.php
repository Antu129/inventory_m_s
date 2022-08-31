<?php
include "header.php";
include "connection.php";
?>


<div class="add_product_btn">
    <a class="btn btn-primary" href="add_product.php" role="button">Add Product</a>
</div>
<div class="product_table">
    <h2>Product List</h2>
    <table class="table table-success table-striped">
        <tr>
            <th>Product Name</th>
            <th>Description</th>
            <th>Unit</th>
            <th>Unit Price(bdt)</th>
            <th></th>
            <th></th>
        </tr>
        <?php
            $res = mysqli_query($conn, "SELECT * FROM `products`;");
            while($row=mysqli_fetch_array($res)){
        ?>
            <tr>
                <td style="text-align: center;"><?php echo $row["product_name"];?></td>
                <td style="text-align: center;"><?php echo $row["product_desc"];?></td>
                <td style="text-align: center;"><?php echo $row["unit"];?></td>
                <td style="text-align: center;"><?php echo $row["unit_price"];?></td>
                <td style="text-align: center;"><a href="update_product.php?id=<?php echo $row["id"]; ?>">Update</a></td>
                <td style="text-align: center;"><a href="delete_product.php?id=<?php echo $row["id"]; ?>">Delete</a></td>
            </tr>


        <?php
                }
        ?>
    </table>
</div>



<?php
include "footer.php";
?>