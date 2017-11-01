// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks


$(document).on('turbolinks:load', function () {
	$('#sign-up-button').click(function () {
		$('#sign-up-modal').modal('show');
	});
	$('#log-in-button').click(function () {
		$('#log-in-modal').modal('show');
	});
	$('#new-post-button').click(function () {
		console.log("clicked new post");
		$('#new-post-modal').modal('show');
	});
	$('#new-comment-button').click(function () {
		$('#new-comment-modal').modal('show');
	});
	$('#user-searchbar').keyup(function () {
		let searchTerm = $(this).val();
		if (searchTerm != "") {
			searchFor(searchTerm);
		} else {
			$('#search-results').empty();
		}
	});
});

function searchFor(searchTerm) {
	$.get('/search_users', {name: searchTerm});
};