<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <title>Document</title>
</head>
<body>
<style>
  body {
    background-color: #5165ff;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center
}

.modal-body {
    background-color: #fff;
    border-color: #fff;

}


.close {
    color: #000;
    cursor: pointer;
}

.close:hover {
    color: #000;
}


.theme-color{

    color: #004cb9;
}
hr.new1 {
    border-top: 2px dashed #fff;
    margin: 0.4rem 0;
}



</style>


<button type="button" class="btn btn-primary launch" data-toggle="modal" data-target="#staticBackdrop"> <i class="fa fa-info"></i> Get information
</button>
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body ">
                <div class="text-right"> <i class="fa fa-close close" data-dismiss="modal"></i> </div>

                <div class="px-4 py-5">

                    <h5 class="text-uppercase">Order number: <?php echo $order_id ?></h5>



                <h4 class="mt-5 theme-color mb-5">Thanks for your order</h4>

                <span class="theme-color">Payment Summary</span>
                <div class="mb-3">
                    <hr class="new1">
                </div>

                <div class="d-flex justify-content-between">
                    <span class="font-weight-bold"><?php echo $product_title ?>(Qty:<?php echo $product_qty ?>)</span>
                    <span class="text-muted">$ <?php echo $product_price ?></span>
                </div>



                <div class="d-flex justify-content-between mt-3">
                    <span class="font-weight-bold">Total</span>
                    <span class="font-weight-bold theme-color">$ <?php echo $total_price ?></span>
                </div>

                </div>


            </div>
        </div>
    </div>
</div>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

