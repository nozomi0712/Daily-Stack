json.id  @post.id
json.user_id  @post.user_id
json.profile  @post.user.profile.image_url
json.nickname  @post.user.nickname
json.grade  @post.grade
json.subject  @post.subject
json.title  @post.title
json.followers  @post.user.followers.length
json.likes  @post.likes.length
json.favorites  @post.favorites.length
json.comments  @post.comments.length
json.created_at  @post.created_at.strftime("%Y-%m-%d %H:%M")
