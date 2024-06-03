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
                    <h6 class="mb-0">Add Category</h6>
                    <h1>${error}</h1>
                </div>

                <form action="${pageContext.request.contextPath}/category/addCate.htm" method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label for="categoryName" class="col-sm-2 col-form-label">Category Name:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="categoryName" name="categoryName" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="description" class="col-sm-2 col-form-label">Description:</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="description" name="description"></textarea>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Add new Category</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
