// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const add_btn = document.querySelector(".add_inventory_food_btn")
const add_inventory_form = document.querySelector(".add_inventory_food_form")
const create_inventory_food_btn = document.querySelector(".create_inventory_food_btn")

add_btn.addEventListener("click", ()=> {
    add_inventory_form.style.display = "block"
  })

  create_inventory_food_btn.addEventListener("click", ()=> {
    add_inventory_form.style.display = "none"
    window.location.reload();
})
