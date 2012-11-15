module AjaxHelper

	def refresh0
		@products = Product.find_all_by_section("1")
		@title = "Электрокотельные"
	end

	def refresh
		@products = Product.find_all_by_section_and_subsection("1", "a")
		@title = "Встраиваемые отопительные модули"
	end
	
	def refresh1
		@products = Product.find_all_by_section_and_subsection("1", "b")
		@title = "Модули в блок-контейнере"
	end

	def refresh2
		@products = Product.find_all_by_section("2")
		@title = "Пульты управления электрокотельными"
	end

	def refresh3
		@products = Product.find_all_by_section("3")
		@title = "Электроводонагреватели"
	end

	def refresh4
		@products = Product.find_all_by_section("4")
		@title = "Пульты управления электроводонагревателями"
	end

	def refresh5
		@products = Product.find_all_by_section("5")
		@title = "Прочая продукция"
	end
end
