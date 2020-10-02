AFRAME.registerComponent('hide-on-exit-ar', {
    // Set this object invisible while in AR mode.
    init: function() {
        this.el.sceneEl.addEventListener('exit-ar', ev => {
            this.el.setAttribute('visible', false);
        });
    }
});