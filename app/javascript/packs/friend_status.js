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
});