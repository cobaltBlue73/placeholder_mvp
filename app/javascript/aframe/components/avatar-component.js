AFRAME.registerComponent('avatar', {

    init: function () {
        this.system.register(this.el);
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

    remove: function () {
        this.system.unregister(this.el);
    },

    tick: function () {
        const self = this;
        const target = self.el.sceneEl.camera;
        const object3D = self.el.object3D;

        if(!object3D.visible || !target) return;

        object3D.getWorldPosition(self.selfPos);
        target.getWorldPosition(self.lookAtPos);
        self.lookAtPos.y = self.selfPos.y;
        object3D.lookAt(self.lookAtPos);
    }
});
