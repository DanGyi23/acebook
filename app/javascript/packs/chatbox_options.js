console.log("loaded friend_status");

$(document).ready(function() {

  $(document).on("click","#chat-card",function(event){
      $('#chatbox-btn').css("background-color", '#f5f5f5');
  });
  $(document).on("mouseover","#chatbox",function(event){
      $('#chatbox-btn').css("background-color", '#f5f5f5');
  });
  $(document).on("click","#send-chat", function(event) {
    console.log('sending');
    $('#chat_message_body').val('');
  });
});
