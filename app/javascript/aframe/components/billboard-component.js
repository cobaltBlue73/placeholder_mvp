AFRAME.registerComponent('billboard', {

    init: function() {
        this.lookAtPos = new THREE.Vector3();
        this.selfPos = new THREE.Vector3();
    },

    tick: function() {
        const target = this.el.sceneEl.camera;
        const object3D = this.el.object3D;

        if (!target) return;

        object3D.getWorldPosition(this.selfPos);
        target.getWorldPosition(this.lookAtPos);
        this.lookAtPos.y = this.selfPos.y;
        object3D.lookAt(this.lookAtPos);
    }
});