module ApplicationHelper
  def page_title
    title = "Miniblog" #これがサイトのブランド名
    title = @page_title + " | " + title if @page_title
    title
  end
end
