AFRAME.registerComponent('avatar', {

    init: function () {
        const img = this.el.querySelector('a-image');
        const srcImg = document.querySelector(img.getAttribute('src'));
        let imgWidth = srcImg.naturalWidth;
        let imgHeight = srcImg.naturalHeight;
        let avatarHeight = img.getAttribute('height');
        let imgAspect = imgWidth / imgHeight;
        const width = avatarHeight * imgAspect;
        img.setAttribute('width', width);
        img.object3D.position.y = avatarHeight / 2;
    },
});
