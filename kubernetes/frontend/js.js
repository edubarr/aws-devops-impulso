$("#button-blue").on("click", function () {
  var txt_nome = $("#name").val();
  var txt_email = $("#email").val();
  var txt_comentario = $("#comment").val();

  $.ajax({
    url: "a09226707ea5f4466a720ec6168bf867-1751849552.sa-east-1.elb.amazonaws.com",

    type: "post",
    data: { nome: txt_nome, comentario: txt_comentario, email: txt_email },
    beforeSend: function () {
      console.log("Tentando enviar os dados....");
    },
  }).done(function (e) {
    alert("Dados Salvos");
  });
});
