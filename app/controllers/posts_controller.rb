class PostsController < ApplicationController
	def index
		@posts = Post.all
		<% @posts.each do |post| %>
	  	<div><a href='<%= "/posts/#{post.id}" %>'><%= post.title %></a></div>
		<% end %>
	end

	def show
		@post = Post.find(params[:id])
	end
end
