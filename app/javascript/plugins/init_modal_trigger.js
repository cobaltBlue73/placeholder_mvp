const initModalTrigger = () => {
  const form = document.querySelector('#new_memory');

  if(form) {
    const fileupload = document.querySelector('#memory_photo');

    fileupload.addEventListener('change', (event) => {
      $('#exampleModalCenter').modal('show');

      const input = event.currentTarget;
      if (input.files && input.files[0]) {
        const reader = new FileReader();
        reader.onload = (e) => {
          const previewImage = document.querySelector('.model-img');
          previewImage.setAttribute('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
    })
  }

}

export { initModalTrigger }
