AFRAME.registerComponent('avatar', {

    init: function() {
        this.system.register(this);
    },

    remove: function() {
        this.system.unregister(this);
    },

    place: function(position) {
        this.el.object3D.position.copy(position);
        this.el.object3D.visible = true;
        this.el.components.animation.animation.restart();
    },

    reset: function() {
        this.el.object3D.visible = false;
        this.el.components.animation.animation.pause();
    }
});