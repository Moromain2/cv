//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

window.addEventListener('DOMContentLoaded', function() {

  // ===== MOBILE MENU LOGIC =====
  var mobileMenuIcon = document.querySelector('.navbar-menu-icon')
  var mobileMenu = document.querySelector('.mobile-menu')
  var mobileMenuLink = document.querySelectorAll('.mobile-menu-link')
  var logoLink = document.querySelector('.navbar-logo')

  // Toggles mobile menu when hamburger icon is clicked
  mobileMenuToggle  = function() {
    mobileMenu.classList.toggle('menu-inactive')
    mobileMenu.classList.toggle('menu-active')
  }
  mobileMenuIcon.onclick = mobileMenuToggle

  // Closes mobile menu when logo is clicked
  mobileMenuHide = function() {
    mobileMenu.classList.remove('menu-active')
    mobileMenu.classList.add('menu-inactive')
  }
  logoLink.onclick = mobileMenuHide

  // Closes mobile menu after a link is clicked
  mobileMenuLink.forEach(function(link) {
    link.onclick = mobileMenuToggle
  })

  // ===== CONTACT BAR LOGIC =====
  var contactBar = document.querySelector('.contact-bar-container')

  contactBar.addEventListener("mouseenter", function() {
    contactBar.classList.remove('inactive')
    contactBar.classList.add('active')
  })
  contactBar.addEventListener("mouseleave", function() {
    setTimeout(function() {
      contactBar.classList.remove('active')
      contactBar.classList.add('inactive')
    }, 1000);
  })

  // ===== EXPERIENCE LOGIC =====
  var experienceCardsWrapper = document.querySelector('.experience-cards-wrapper')
  var experienceCard = document.querySelectorAll('.experience-card')

  // Loops through each experience item
  experienceCard.forEach(function(experience) {
    var experienceToggleButton = experience.querySelector('.experience-card-button')
    var experienceBody = experience.querySelector('.experience-body-container')

    // Toggles experience body class
    function toggleExperienceBody() {
      experienceBody.classList.toggle('experience-body-inactive')
      experienceBody.classList.toggle('experience-body-active')
    }
    experienceToggleButton.onclick = toggleExperienceBody
  })

})
