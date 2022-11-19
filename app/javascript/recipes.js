// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const shopping_list_btn = document.querySelector(".generate-shopping-list-btn");
const generate_shopping_list_container = document.querySelector(".generate-shopping-list-container");
const close_btn = document.querySelector(".close-btn");

shopping_list_btn.addEventListener("click", () => {
  console.log('click')
  //generate_shopping_list_container.style.display = "block";
  //generate_shopping_list_container.style.visibility = "visible";
})

close_btn.addEventListener("click", () => {
  generate_shopping_list_container.style.display = "none";
  generate_shopping_list_container.style.visibility = "hidden";
})