defmodule PhoenixLearningWeb.PostJSON do
  alias PhoenixLearning.Posts.Post

  @doc """
  Renders a list of posts.
  """
  def index(%{posts: posts}) do
    %{data: for(post <- posts, do: data(post))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{data: data(post)} # <--- data here is what the name of the array is when we return posts. Can change this to anything
  end

  defp data(%Post{} = post) do
    %{
      id: post.id,
      body: post.body,
      title: post.title
    }
  end
end
