class StaticPagesController < ApplicationController
 def home
 end
 
 def userpage
 end

 def search
 	if params[:tag_id]
 		tag = Tag.find(params[:tag_id])
 		@posts = tag.posts
 	else
 		@posts=Post.all
 	end
 end
  
end
