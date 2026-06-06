module TodosHelper
  def category_filter_options
    [ [ "All", "all" ], *Todo::CATEGORIES.map { |category| [ category, category ] } ]
  end
end
