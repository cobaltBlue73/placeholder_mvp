import html2Canvas from 'html2canvas';

AFRAME.registerSystem('ar-snapshot', {
    init: function() {
        this.snapShotRequest = null;
        // this.el.components.screenshot.data.width = window.screen.width;
        // this.el.components.screenshot.data = window.screen.height;
    },

    takeSnapShot: function(snapShotRequest) {
        if (this.snapShotRequest) return;

        this.snapShotRequest = snapShotRequest
    },

    tock: function() {
        if (!this.snapShotRequest) return;

        this.el.components.screenshot.data.width = window.screen.width;
        this.el.components.screenshot.data.height = window.screen.height;
        let screenshotCanvas = this.el.components.screenshot.getCanvas('perspective');
        this.snapShotRequest(screenshotCanvas.toDataURL("image/png"));
        // const req = this.snapShotRequest;
        // html2Canvas(this.el.canvas).then(c => {
        //     req(c.toDataURL("image/png"));
        // });
        this.snapShotRequest = null;
    }
});