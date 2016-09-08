
$( document ).ready ->
  $('[href="#signup"]').click ->
    $('.login_form').fadeOut 150, =>
      $('.registration_form').animate { opacity: 1 }, 150
  $('[href="#signin"]').click ->
    $('.registration_form').animate { opacity: 0 }, 150, =>
      $('.login_form').fadeIn 150


  $('.enter_button').click ->
    sendInfo =
      login: $('[name="login"]').val()
      password: $('[name="password"]').val()

    $.ajax
      url: '/api/login'
      type: "POST"
      data: JSON.stringify sendInfo
      contentType: "application/json"
      complete: (res)->
        console.log res

  $('.register_button').click ->
    sendRegisterInfo =
      login: $('[name="reglogin"]').val()
      password: $('[name="regpassword"]').val()

    if $('[name="confirmregpassword"]').val() is sendRegisterInfo.password
      $.ajax
        url: '/api/registration'
        type: "POST"
        data: JSON.stringify sendRegisterInfo
        contentType: "application/json"
        complete: (res)->
          console.log res