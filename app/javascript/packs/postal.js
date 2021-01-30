$(function (){
  $(document).on("click","#post", function (){
    $.ajax ({
       url: "http://zipcloud.ibsnet.co.jp/api/search?zipcode=" + $("#zipcode").val(),
         dataType : "jsonp",
    }).done(function(data) {
       if(data.results){
        setData(data.results[0])
       }else{
         alert("該当するデータが見つかりませんでした")
       }
    }).fail(function(data){
      alert("通信に失敗しました")
    })
 });
  function setData(data){
   $("#prefecture").val(data.address1);
   $("#city").val(data.address2);
   $("#address").val(data.address3);
  }
});