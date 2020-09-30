AFRAME.registerSystem('xr-double-tap', {

    init: function () {
        this.timeOutClick = 300; // ms
        this.tapped = 0;
        this.el.renderer.xr.addEventListener('sessionstart', ev => {
            let session = this.el.renderer.xr.getSession();
            const self = this;
            session.addEventListener('select', () => {
                if(!self.tapped){
                    self.tapped = setTimeout(() => {
                        self.tapped = null
                    }, self.timeOutClick); //wait 300ms
                } else {
                    clearTimeout(self.tapped);
                    self.el.emit('doubleTap');
                }
            });
        });
    },
});
