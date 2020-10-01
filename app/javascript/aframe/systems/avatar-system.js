AFRAME.registerSystem('avatar', {

    init: function() {
        this.avatars = {};
        this.selectedAvatar = null;

        this.el.addEventListener('hitSelect', ev => {
            if (!this.selectedAvatar) return;

            this.selectedAvatar.setAttribute('position', ev.detail.hitPosition);
            this.selectedAvatar.setAttribute('visible', true);
            this.selectedAvatar = null;
        });
    },

    selectAvatar: function(avatarId) {
        this.selectedAvatar = this.avatars[avatarId];
    },

    resetAllAvatars: function() {
        Object.values(this.avatars).forEach(avatar => {
            avatar.setAttribute('visible', false);
        });
    },

    register: function(avatarElem) {
        this.avatars[avatarElem.getAttribute('id')] = avatarElem
    },

    unregister: function(avatarElem) {
        this.avatars[avatarElem.getAttribute('id')] = null;
    }
});