$(document).on "page:change", ->
  return unless  $(".books_ctrl").length > 0
  console.log "books controller"