json.id  @comment.id
json.user_id  @comment.user_id
json.profile  @comment.user.profile.image_url
json.nickname  @comment.user.nickname
json.created_at  @comment.created_at.strftime("%Y-%m-%d %H:%M")
json.post_id  @comment.post_id
json.comments  simple_format(@comment.comments)