<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: black;
            color: white;
            overflow-x: hidden;
        }
        .btn-primary {
            background-color: red;
            border-color: red;
        }
        .form-control {
            background-color: #333;
            color: white;
            border: 1px solid #555;
        }
        .form-control::placeholder {
            color: #aaa;
        }
        .form-control:focus {
            background-color: #555;
            border-color: #777;
            color: white;
        }
        .form-control {
            color: white;
        }
        .form-group.row {
            margin-bottom: 15px;
        }
        .form-control {
            width: 75%;
        }
    </style>
</head>
<body>
    <div class="container-fluid position-relative d-flex p-0">
        <div class="container-fluid pt-4 px-4">
            <div class="bg-secondary text-center rounded p-4">
                <div class="d-flex align-items-center justify-content-between mb-4">
                    <h6 class="mb-0">Add Product</h6>
                    <h1>${error}</h1>
                </div>

                <form action="${pageContext.request.contextPath}/product/addProduct.htm" method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label for="productName" class="col-sm-2 col-form-label">Name:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="productName" name="productName" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="description" class="col-sm-2 col-form-label">Description:</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="description" name="description"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="picture" class="col-sm-2 col-form-label">Picture</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control-file" id="image" name="image" accept="image/*" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="price" class="col-sm-2 col-form-label">Price</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="price" name="price" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="sale" class="col-sm-2 col-form-label">Sale</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="sale" name="sale" required></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="totalStars" class="col-sm-2 col-form-label">Total Star</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="totalStars" name="totalStars" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="totalFeedback" class="col-sm-2 col-form-label">Total Feedback</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="totalFeedback" name="totalFeedback" required></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="totalOrder" class="col-sm-2 col-form-label">Total Order</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="totalOrder" name="totalOrder" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="audioFile" class="col-sm-2 col-form-label">Trailer</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="audioFile" name="audioFile" required></textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Add new Product</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
