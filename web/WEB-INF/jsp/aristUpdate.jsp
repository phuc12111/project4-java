<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
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
                    <h6 class="mb-0">Update Product</h6>
                    <h1>${error}</h1>
                </div>

                <form action="${pageContext.request.contextPath}/artists/updateart.htm" method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label for="productID" class="col-sm-2 col-form-label">artist ID</label>
                        <div class="col-sm-10">
                            <label class="col-form-label">${artist.artistID}</label>
                            <input type="hidden" id="artistID" name="artistID" value="${artist.artistID}">
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="productName" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="artistName" name="artistName" value="${artist.artistName}" required>
                        </div>
                    </div>
                         <div class="form-group row">
                        <label for="price" class="col-sm-2 col-form-label">email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" name="email" value="${artist.email}" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="sale" class="col-sm-2 col-form-label">phone</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="phone" name="phone" required>${artist.phone}</textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="description" class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="description" name="description" value="${artist.description}" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="picture" class="col-sm-2 col-form-label">Picture</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control-file" id="image" name="image" accept="image/*">
                        </div>
                    </div>
                   
                    
                    <button type="submit" class="btn btn-primary">Update Product</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
