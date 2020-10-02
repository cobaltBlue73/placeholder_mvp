AFRAME.registerSystem('ar-ui-controller', {

    init: function () {
        this.timeOutClick = 200; // ms
        this.tapped = null;
        this.inPhotoMode = false;
        this.inAr = false;

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
                    self.inPhotoMode = !self.inPhotoMode;
                    self.el.emit('togglePhotoMode', { inPhotoMode: self.inPhotoMode });
                }
            });
        });

        this.el.addEventListener('previewPhoto', ev => {
            this.inPhotoMode = false;
            this.el.emit('togglePhotoMode', { inPhotoMode: this.inPhotoMode });
        });
    },

    tick: function (){
        if (!this.inAr && this.el.is('ar-mode')){
            this.inAr = true;
            this.el.emit('ARStart');
        }
    }
});
