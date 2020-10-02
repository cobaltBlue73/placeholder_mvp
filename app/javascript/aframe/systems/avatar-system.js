AFRAME.registerSystem('avatar', {

    init: function() {
        this.avatars = {};
        this.selectedAvatar = null;

        this.el.addEventListener('hitSelect', ev => {
            if (!this.selectedAvatar) return;

            this.selectedAvatar.place(ev.detail.hitPosition);
            this.selectedAvatar = null;
        });
    },

    selectAvatar: function(avatarId) {
        this.selectedAvatar = this.avatars[avatarId];
    },

    resetAllAvatars: function() {
        Object.values(this.avatars).forEach(avatar => avatar.reset());
    },

    register: function(avatar) {
        this.avatars[avatar.el.getAttribute('id')] = avatar
    },

    unregister: function(avatar) {
        this.avatars[avatar.el.getAttribute('id')] = avatar;
    }
});