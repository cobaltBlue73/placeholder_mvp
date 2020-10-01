AFRAME.registerComponent('avatar', {

    init: function() {
        this.system.register(this.el);
    },

    remove: function() {
        this.system.unregister(this.el);
    }
});