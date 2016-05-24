<form action="/posts/1" method="patch">
	<input type="text" name="post[title]" value="My Super Title">
	<textarea name="post[body]">Some Body of a post</textarea>
	<input type="checkbox" name="post[tag_ids]" value="2" checked="true">
	<input type="checkbox" name="post[tag_ids]" value="3" checked="true">
	<input type="checkbox" name="post[tag_ids]" value="5" checked="true">

	<input type="hidden", name="post[tag_ids]" value="">

	<input type="hidden" name="id" value="1">

	<input type="submit" value="Update Post">
</form>