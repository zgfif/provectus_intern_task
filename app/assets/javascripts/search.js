document.addEventListener("turbolinks:load", function(){
	$input = $("[data-behavior='autocomplete']")


	var options  = {
		getValue:"name", 
		url: function(phrase){
			return "/search.json?q=" + phrase;
		},
		categories: [
			{
				listLocation: "event_titles",
				header: "<strong>by Event's titles</strong>",
			},
			{
				listLocation: "event_tags",
				header: "<strong>by Event's tags</strong>",
			}

		],

		list: {
			onChooseEvent: function() {
				var url = $input.getSelectedItemData().url
				$input.val("")
				Turbolinks.visit(url)
				// console.log(url)
			}
		}
	}

	$input.easyAutocomplete(options)
});