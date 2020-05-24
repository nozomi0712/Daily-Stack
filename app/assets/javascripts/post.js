$(function(){

   $(".tab").on("click", function(){
      $(".active").removeClass("active");

      $(this).addClass("active");
      const index = $(".tab").index(this);
      $(".content__index").removeClass("show__index").eq(index).addClass("show__index");
   })


   function buildHTML(post){
      var html = `<div class="post__card" data-post-id=${post.id}>
                     <a href="/users/${post.user_id}" class="post__card__picture__link">
                        <div class="picture">
                           <img src="${post.profile}" alt="未設定" class= "post__user__image">
                        </div>
                     </a>
                     <a href="/posts/${post.id}" class="post__card__contents">
                        <div class="post__contents">
                           <div class="post__contents__name element">
                              ${post.nickname}
                           </div>
                           <div class="post__card__content__grade element">
                              ${post.grade}
                           </div>
                           <div class="post__card__content__subject element">
                              ${post.subject}
                           </div>
                        </div>
                        <div class="post__title">
                           ${post.title}
                        </div>
                        <div class="post__under">
                           <div class="post__status">
                              <div class="follow icon">フォロワー</div>
                              <div class="follow count">
                                 ${post.followers}
                              </div>
                              <div class="like icon">
                                 <i class="fas fa-heart"></i>
                              </div>
                              <div class="like count">
                                 ${post.likes}
                              </div>
                              <div class="favorite icon">
                                 <i class="fas fa-star"></i>
                              </div>
                              <div class="favorite count">
                                 ${post.favorites}
                              </div>
                              <div class="comment icon">
                                 <i class="fas fa-comment"></i>
                              </div>
                              <div class="comment count">
                                 ${post.comments}
                              </div>
                           </div>
                           <div class="post__created">
                              ${post.created_at}
                           </div>
                        </div>
                     </a>
                  </div>`
      return html;
   }
   $('#new_post').on('submit', function(e){
      e.preventDefault();
      var formData = new FormData(this);
      var url = $(this).attr('action');
      $.ajax({
         url: url,
         type: "POST",
         data: formData,
         dataType: 'json',
         processData: false,
         contentType: false
      })
      .done(function(data){
         var html = buildHTML(data);
         $('.content__ajax').prepend(html);
         $('.empty__val').val("");
         $('.send_btn').prop('disabled', false);
      })
      .fail(function(){
         alert("投稿に失敗しました")
         $(".send_btn").prop('disabled', false);
      })
   })


   function buildComment(comment){
      var html = `<div class="comment data-comment-id=${comment.id}">
                     <div class="comment__person">
                        <a href="/users/${comment.user_id}">
                           <img src="${comment.profile}" class="comment__person__link">
                        </a>
                        <div class="comment__person__data">
                           <div class="comment__person__data__name element">
                              ${comment.nickname}
                           </div>
                           <div class="comment__person__data__created element">
                              ${comment.created_at}
                           </div>
                        </div>
                        <a href="/posts/${comment.post_id}/comments/${comment.id}" class="destroy__btn" data-method="delete">削除</a>
                     </div>
                     <div class="comment__text">
                        ${comment.comments}
                     </div>
                  </div>`
      return html;
   }
   $('#new_comment').on('submit', function(e){
      e.preventDefault();
      var formData = new FormData(this);
      var url = $(this).attr('action');
      $.ajax({
         url: url,
         type: "POST",
         data: formData,
         dataType: 'json',
         processData: false,
         contentType: false
      })
      .done(function(data){
         var html = buildComment(data);
         $('.comments__wrapper').prepend(html);
         $('.text__feald').val("");
         $('.send__btn').prop('disabled', false);
      })
      .fail(function(){
         alert("投稿に失敗しました")
         $(".send__btn").prop('disabled', false);
      })
   })
});
