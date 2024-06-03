<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Update Supplier</title>
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
            .form-control, .form-control-file {
                background-color: #333;
                color: white;
                border: 1px solid #555;
            }
            .form-control::placeholder, .form-control-file::placeholder {
                color: #aaa; /* Placeholder color */
            }
            .form-control:focus, .form-control-file:focus {
                background-color: #555;
                border-color: #777;
                color: white; /* Ensures text color is white when focused */
            }
            .form-control {
                color: white; /* Ensures text color is white */
            }
            .form-group.row {
                margin-bottom: 15px;
            }
            .form-control {
                width: 75%;
            }
            #image {
                width: 50%;
            }
            .form-check-inline {
                display: inline-flex;
                align-items: center;
                margin-right: 10px;
            }
            .form-check-label {
                margin-left: 5px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid position-relative d-flex p-0">
            <!-- Update Admin Form Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary text-center rounded p-4">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0">Reply Feedback Product</h6>
                        <h1>${error}</h1>
                    </div>

                    <form action="${pageContext.request.contextPath}/feedback_product/reply.htm" method="post" enctype="multipart/form-data">
                        <div class="form-group row">
                            <label for="feedbackProductID" class="col-sm-2 col-form-label">FeedbackProductID:</label>
                            <div class="col-sm-1">
                                <label>${feedbackProductByID.feedbackProductID}</label>
                                <input type="hidden" class="form-control" id="feedbackProductID" name="feedbackProductID" value="${feedbackProductByID.feedbackProductID}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="adminID" class="col-sm-2 col-form-label">AdminID:</label>
                            <div class="col-sm-1">
                                <label>${adminLogin.adminID}</label>
                                <input type="hidden" class="form-control" id="adminID" name="adminID" value="${adminLogin.adminID}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="content" class="col-sm-2 col-form-label">Content:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="content" name="content" value="" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Reply</button>
                    </form>

                </div>
            </div>
            <!-- Update Admin Form End -->
        </div>
    </body>
</html>
