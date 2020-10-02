AFRAME.registerComponent('standee', {
    schema: {
        yOffset: { type: 'number', default: 0 }
    },
    init: function() {
        const img = this.el.querySelector('a-image');
        const srcImg = document.querySelector(img.getAttribute('src'));
        let imgWidth = srcImg.naturalWidth;
        let imgHeight = srcImg.naturalHeight;
        let avatarHeight = img.getAttribute('height');
        let imgAspect = imgWidth / imgHeight;
        let width = avatarHeight * imgAspect;
        img.setAttribute('width', width);
        img.object3D.position.y = avatarHeight / 2 - this.data.yOffset;
    },
});