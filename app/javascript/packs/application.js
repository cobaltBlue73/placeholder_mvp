// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "controllers"

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { markAsChecked } from '../plugins/init_checkbox';
import { importButton } from '../plugins/init_import_button';
import { resizeAllCards } from '../plugins/init_masonry_layout';
import { collapseCameraViewElements } from '../plugins/init_collapse_camera_view_elements.js'
import { initMemoryNotification } from '../channels/notification_channel';
import { initModalTrigger } from '../plugins/init_modal_trigger';
import { initHideBottomNavbar } from '../plugins/init_hide_bottom_navbar';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  resizeAllCards();
  markAsChecked();
  initMemoryNotification();
  importButton();
  collapseCameraViewElements();
  initModalTrigger();
  initHideBottomNavbar();
});
