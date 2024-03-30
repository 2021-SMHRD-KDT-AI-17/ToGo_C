<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <script src="https://cdn.iamport.kr/v1/iamport.js"></script>

  <button onclick="requestPay(1000)">결제하기</button>

  <script>
    IMP.init("imp14397622");

    function requestPay(total) {
      IMP.request_pay({
        pg: "html5_inicis",
        pay_method: "card",
        name: "테스트 결제",
        amount: total,
        buyer_tel: "010-0000-0000",
      },
        async (rsp) => {

          if (rsp.success) {
            // 결제 성공시
            alert("결제 성공")
            i++;
          } else {
            // 결제 실패시
            alter("실패")
          }
        }

      );

    }
  </script>
</body>

</html>