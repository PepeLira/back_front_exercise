module ApplicationHelper
  def each_page(pagination, &block)
    pagination.each_relevant_page(&block)
  end
end
