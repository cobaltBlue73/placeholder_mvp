AFRAME.registerComponent('ar-hit-test', {
    init: function () {
        this.system.registerMarker(this);
    },

    remove: function () {
        this.system.unregisterMarker(this);
    },

    onHit: function(position) {
        this.el.object3D.position.copy(position);
    }
});