<div class="inner-services-container">
    <?php
        $Include_Sql=$conn->query("SELECT * FROM `tbl_ordes` ORDER BY o_order_by ASC");

        while($Include_Row=$Include_Sql->fetch_array()){?>
            <div class="services-container">
                <a href="<?php echo $Include_Row['o_head_url'];?>">
                    <div class="img-container">
                        <img src="<?php echo $images.'static/'.$Include_Row['o_file'];?>" alt="<?php echo $Include_Row['o_head'];?>">
                    </div>
                    <a class="services-name" href="<?php echo $Include_Row['o_head_url']; ?>"><?php echo $Include_Row['o_head']; ?></a>
                </a>
            </div>
    <?php    }
    ?>
</div>