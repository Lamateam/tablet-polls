
$( document ).ready ->
  $('[href="#signup"]').click ->
    $('.login_form').fadeOut 150, =>
      $('.registration_form').animate { opacity: 1 }, 150
  $('[href="#signin"]').click ->
    $('.registration_form').animate { opacity: 0 }, 150, =>
      $('.login_form').fadeIn 150