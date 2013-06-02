module ProductsHelper

	def nl2br(s)
  		s.gsub(/\n/, '<br>')
	end

	def lists
		prods = params[:prods]

		if (prods == "a") || (prods == "b")
			@products = Product.find_all_by_section_and_subsection("1", prods)
		else
			@products = Product.find_all_by_section(prods)
		end
		@title = params[:title]
	end

end
