AFRAME.registerSystem('ar-ui-controller', {

    init: function () {
        this.timeOutClick = 200; // ms
        this.tapped = null;
        this.triggeredAR = false;
        this.el.renderer.xr.addEventListener('sessionstart', ev => {
            let session = this.el.renderer.xr.getSession();
            const self = this;
            session.addEventListener('select', () => {
                if(!self.tapped){
                    self.tapped = setTimeout(() => {
                        self.tapped = null;
                    }, self.timeOutClick); //wait 300ms
                } else {
                    clearTimeout(self.tapped);
                    self.tapped = null;
                    self.el.emit('doubleTap');
                }
            });
        });
    },

    tick: function () {
        if (!this.triggeredAR && this.el.is('ar-mode')){
            this.el.emit('ARStart');
            this.triggeredAR = true;
        }
    }
});
