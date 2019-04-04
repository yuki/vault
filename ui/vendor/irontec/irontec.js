/*
 *
 * IRONTEC custom functions
 *
 */
function satan(){
  console.log("satan!!!!");
    console.log("a");
    console.log(Date());
}



function load_tree(){
  $("#tree").fancytree({
    extensions: ["glyph","filter"],
    glyph: {
      preset: "awesome5",
    },
    quicksearch: true,
    filter: {
        autoApply: true,   // Re-apply last filter if lazy data is loaded
        autoExpand: false, // Expand all branches that contain matches while filtered
        counter: true,     // Show a badge with number of matching child nodes near parent icons
        fuzzy: false,      // Match single characters in order, e.g. 'fb' will match 'FooBar'
        hideExpandedCounter: true,  // Hide counter badge if parent is expanded
        hideExpanders: false,       // Hide expanders if all child nodes are hidden by filter
        highlight: true,   // Highlight matches by wrapping inside <mark> tags
        leavesOnly: false, // Match end nodes only
        nodata: true,      // Display a 'no data' status node if result is empty
        mode: "dimm"       // Grayout unmatched nodes (pass "hide" to remove unmatched node instead)
    },


    source: [
		{"title": "Books", "expanded": true, "folder": true, "children": [
			{"title": "Art of War", "type": "book", "author": "Sun Tzu", "year": -500, "qty": 21, "price": 5.95},
			{"title": "The Hobbit", "type": "book", "author": "J.R.R. Tolkien", "year": 1937, "qty": 32, "price": 8.97},
			{"title": "The Little Prince", "type": "book", "author": "Antoine de Saint-Exupery", "year": 1943, "qty": 21, "price": 5.95},
			{"title": "Don Quixote", "type": "book", "author": "Miguel de Cervantes", "year": 1615, "qty": 21, "price": 5.95}
		]},
		{"title": "Music", "folder": true, "children": [
			{"title": "Nevermind", "type": "music", "author": "Nirvana", "year": 1991, "qty": 21, "price": 5.95},
			{"title": "Autobahn", "type": "music", "author": "Kraftwerk", "year": 1974, "qty": 21, "price": 5.95},
			{"title": "Kind of Blue", "type": "music", "author": "Miles Davis", "year": 1959, "qty": 21, "price": 5.95},
			{"title": "Back in Black", "type": "music", "author": "AC/DC", "year": 1980, "qty": 21, "price": 5.95},
			{"title": "The Dark Side of the Moon", "type": "music", "author": "Pink Floyd", "year": 1973, "qty": 21, "price": 5.95},
			{"title": "Sgt. Pepper's Lonely Hearts Club Band 766 76 8 7687 687 ", "type": "music", "author": "The Beatles", "year": 1967, "qty": 21, "price": 5.95}
		]},
		{"title": "Electronics & Computers", "expanded": true, "folder": true, "children": [
			{"title": "Cell Phones", "folder": true, "children": [
				{"title": "Moto G", "type": "phone", "author": "Motorola", "year": 2014, "qty": 21, "price": 224.99},
				{"title": "Galaxy S8", "type": "phone", "author": "Samsung", "year": 2016, "qty": 21, "price": 509.99},
				{"title": "iPhone SE", "type": "phone", "author": "Apple", "year": 2016, "qty": 21, "price": 282.75},
				{"title": "G6", "type": "phone", "author": "LG", "year": 2017, "qty": 21, "price": 309.99},
				{"title": "Lumia", "type": "phone", "author": "Microsoft", "year": 2014, "qty": 21, "price": 5.95},
				{"title": "Xperia", "type": "phone", "author": "Sony", "year": 2014, "qty": 21, "price": 5.95},
				{"title": "3210", "type": "phone", "author": "Nokia", "year": 1999, "qty": 21, "price": 5.95}
			]},
			{"title": "Computers", "folder": true, "children": [
				{"title": "ThinkPad", "type": "computer", "author": "IBM", "year": 1992, "qty": 21, "price": 749.90},
				{"title": "C64", "type": "computer", "author": "Commodore", "year": 1982, "qty": 21, "price": 595.00},
				{"title": "MacBook Pro", "type": "computer", "author": "Apple", "year": 2006, "qty": 21, "price": 1949.95},
				{"title": "Sinclair ZX Spectrum", "type": "computer", "author": "Sinclair Research", "year": 1982, "qty": 21, "price": 529},
				{"title": "Apple II", "type": "computer", "author": "Apple", "year": 1977, "qty": 21, "price": 1298},
				{"title": "PC AT", "type": "computer", "author": "IBM", "year": 1984, "qty": 21, "price": 1235.00}
			]}
		]},
	]

  });



}

$("input[name=search]").keyup(function(e){
  var n,
    tree = $.ui.fancytree.getTree(),
    args = "autoApply autoExpand fuzzy hideExpanders highlight leavesOnly nodata".split(" "),
    opts = {},
    filterFunc = $("#branchMode").is(":checked") ? tree.filterBranches : tree.filterNodes,
    match = $(this).val();

  $.each(args, function(i, o) {
    opts[o] = $("#" + o).is(":checked");
  });
  opts.mode = $("#hideMode").is(":checked") ? "hide" : "dimm";

  if(e && e.which === $.ui.keyCode.ESCAPE || $.trim(match) === ""){
    $("button#btnResetSearch").click();
    return;
  }
  if($("#regex").is(":checked")) {
    // Pass function to perform match
    n = filterFunc.call(tree, function(node) {
      return new RegExp(match, "i").test(node.title);
    }, opts);
  } else {
    // Pass a string to perform case insensitive matching
    n = filterFunc.call(tree, match, opts);
  }
  $("button#btnResetSearch").attr("disabled", false);
  $("span#matches").text("(" + n + " matches)");
}).focus();

$("button#btnResetSearch").click(function(e){
  $("input[name=search]").val("");
  $("span#matches").text("");
  tree.clearFilter();
}).attr("disabled", true);



