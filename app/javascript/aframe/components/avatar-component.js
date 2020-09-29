AFRAME.registerComponent('avatar', {

    init: function () {
        const img = this.el.querySelector('a-image');
        const srcImg = document.querySelector(img.getAttribute('src'));
        let imgWidth = srcImg.naturalWidth;
        let imgHeight = srcImg.naturalHeight;
        let avatarHeight = img.getAttribute('height');
        let imgAspect = imgWidth / imgHeight;
        let width = avatarHeight * imgAspect;
        img.setAttribute('width', width);
        img.object3D.position.y = avatarHeight / 2;
        this.lookAtPos = new THREE.Vector3();
        this.selfPos = new THREE.Vector3();
    },

    tick: function () {
        const self = this;
        const target = self.el.sceneEl.camera;
        const object3D = self.el.object3D;

        // make sure camera is set
        if (target) {
            object3D.getWorldPosition(self.selfPos);
            target.getWorldPosition(self.lookAtPos);
            self.lookAtPos.y = self.selfPos.y;
            object3D.lookAt(self.lookAtPos);
        }
    }
});
