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
    <link rel="stylesheet" href="css/universal_style.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
    <title>Add Payment</title>
    <style type="text/css">
      form,
      p {
        margin: 0px 20px;
      }

      p.note {
        font-size: 1rem;
        color: red;
      }

      input,
      textarea {
        border-radius: 5px;
        border: 1px solid #ccc;
        padding: 4px;
        font-family: "Lato";
        width: 300px;
        margin-top: 10px;
      }

      label {
        width: 300px;
        font-weight: bold;
        display: inline-block;
        margin-top: 20px;
        color: #003e29;
      }

      label span {
        font-size: 1rem;
      }

      label.error {
        color: red;
        font-size: 1rem;
        display: block;
        margin-top: 5px;
      }

      input.error,
      textarea.error {
        border: 1px dashed red;
        font-weight: 300;
        color: red;
      }

      [type="submit"],
      [type="reset"],
      button,
      html [type="button"] {
        margin-left: 0;
        border-radius: 0;
        background: black;
        color: white;
        border: none;
        font-weight: 300;
        padding: 10px 0;
        line-height: 1;
      }
    </style>
  </head>
  <body>
    <div class="contaner" style="margin-top: 120px">
      <h3 style="text-align: center; color: #003e29; font-size: 3rem">
        Add Payment
      </h3>
      <div
        class=""
        style="
          max-width: 60rem;
          margin: 0px auto;
          float: none;
          display: flex;
          margin-top: 3rem;
        "
      >
        <form id="basic-form" style="width: 30rem" action="" method="post">
          <p>
            <label style="color: #003e29" for="name">Name </label>
            <input id="name" name="name" />
          </p>
          <p>
            <label style="color: #003e29" for="csv">CSV </label>
            <input id="csv" name="csv" />
          </p>
          <p>
            <label for="date">Expiry Date </label>
            <input id="date" name="date" />
          </p>
          <p>
            <label style="color: #003e29" for="cno">Card Number </label>
            <input id="cno" name="cno" />
          </p>

          <p>
            <input
              class="submit"
              type="submit"
              value="SUBMIT"
              style="background-color: #003e29; border-color: #003e29"
            />
          </p>
        </form>
        <img src="./img/Credit card-bro.svg" alt="image" style="width: 30rem" />
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
