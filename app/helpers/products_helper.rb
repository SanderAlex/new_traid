module ProductsHelper

	def list
		@products = Product.find_all_by_section_and_subsection("1","a")
	end

	def list1
		@products = Product.find_all_by_section_and_subsection("1","b")
	end

	def list2
		@products = Product.find_all_by_section("2")
	end

	def list3
		@products = Product.find_all_by_section("3")
	end

	def list4
		@products = Product.find_all_by_section("4")
	end

	def list5
		@products = Product.find_all_by_section("5")
	end

end
