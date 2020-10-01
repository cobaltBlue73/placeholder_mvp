const initHideBottomNavbar = () => {
  const textArea = document.querySelector('#comment_content');
  const bottomNavbar = document.querySelector('.bottom-navbar');
  if (textArea) {
    console.log('TextArea detected');
    textArea.addEventListener('focus', (e) => {
      console.log('TextArea focused');
      bottomNavbar.classList.add('hidden');
    })
    textArea.addEventListener('blur', (e) => {
      console.log('TextArea blurred');
      bottomNavbar.classList.remove('hidden');
    })
  }
}

export { initHideBottomNavbar }
