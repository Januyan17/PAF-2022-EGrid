<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
      integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/style.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
    <title>ViewPayment</title>
   
  </head>
  <body>
    <div class="contaner" style="margin-top: 120px">
      <h3 style="text-align: center; color: #003e29; font-size: 3rem">
        Payment
      </h3>

      <div
        class=""
        style="
          max-width: 60rem;
          margin: 0px auto;
          float: none;
          margin-top: 3rem;
        "
      >
        <div class="row">
          <div class="col-sm-8"></div>

          <div class="col-sm-4" style="padding: 10px 15px 10px 15px">
            <a
              href="addpayment.jsp"
              class="btn btn-success btn-block"
              style="background-color: #003e29; border-color: #003e29"
            >
              Add Payment</a
            >
          </div>
        </div>
        <table id="tab-01" class="table table-striped table-hover">
          <thead style="background-color: #e3f7f5; color: #007f85">
            <tr>
              <th>Name</th>
              <th>CVC</th>
              <th>Date</th>
              <th>Card No</th>
              <th>Action</th>
            </tr>
          </thead>
       			<tbody>

					<c:forEach var="tempItem" items="${ PAYMENT_LIST }">
						<c:url var="updateLink" value="PaymentController">
							<c:param name="COMMAND" value="LOAD" />
							<c:param name="id" value="${tempItem.id}" />
						</c:url>
						<c:url var="deleteLink" value="PaymentController">
							<c:param name="COMMAND" value="DELETE" />
							<c:param name="id" value="${tempItem.id}" />
						</c:url>
						<tr>
							<td>${tempItem.name}</td>
							<td>${tempItem.expirydate}</td>
							<td>${tempItem.cardno}</td>

							<td>${tempItem.cvc}</td>
						


						</tr>
					</c:forEach>
				</tbody>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
      </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />

    <script>
      $(document).ready(function () {
        $("#basic-form").validate({
          rules: {
            name: {
              required: true,
            },
            csv: {
              required: true,
            },

            cno: {
              required: true,
              minlength: 8,
            },
            date: {
              required: true,
              date: true,
            },
          },
          messages: {
            name: {
              required: "Name is important",
            },
            csv: {
              required: "CSV is important",
            },

            cno: {
              required: "Card No is important",
              //minlength : 8,
            },
            date: {
              required: "Expiry Date is important",
              //date : true,
            },
          },
        });
      });
    </script>
  </body>
</html>
