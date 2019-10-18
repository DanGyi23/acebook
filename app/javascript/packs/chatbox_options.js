console.log("loaded friend_status");

$(document).ready(function() {
  var status = "red"
  $(document).on("click",".friend_status",function(event){
    let buttonID = this.id.replace("status-", "");
      if (status === "red") {
        status = "green"
      } else {
        status = "red"
      }

      $(`#status-${buttonID}`).css("color", status);
  });

  $(document).on("click","#chat-card",function(event){
      $('#chatbox-btn').css("background-color", '#f5f5f5');
  });
  $(document).on("click","#send-chat", function(event) {
    console.log('sending');
    $('#message_body').val('');
  });
  $(document).on("click","#message_body", function(event) {
    console.log('clicked on message_body');
    console.log(this);
  });
});
