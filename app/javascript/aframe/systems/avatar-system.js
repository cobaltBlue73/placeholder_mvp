AFRAME.registerSystem('avatar', {

    init: function () {
        this.avatars = {};
        this.selectedAvatar = null;
    },

    plantSelectedAvatar: function (position) {
        if (!this.selectedAvatar) return;

        this.selectedAvatar.setAttribute('position', position);
        this.selectedAvatar.setAttribute('visible', true);
        this.selectedAvatar = null;
    },

    selectAvatar: function (avatarId) {
        this.selectedAvatar = this.avatars[avatarId];
    },

    resetAllAvatars: function () {
        Object.values(this.avatars).forEach(avatar => {
            avatar.setAttribute('visible', false);
        });
    },

   register: function (avatarElem) {
       this.avatars[avatarElem.getAttribute('id')] = avatarElem
   },

    unregister: function (avatarElem) {
        this.avatars[avatarElem.getAttribute('id')] = null;
    }
});
