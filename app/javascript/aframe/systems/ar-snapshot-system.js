import html2canvas from 'html2canvas';

AFRAME.registerSystem('ar-snapshot', {
    init: function () {
        this.snapShotRequest = null;
    },

    takeSnapShot: function (snapShotRequest) {
        if (this.snapShotRequest) return;

        this.snapShotRequest = snapShotRequest
    },

    tick: function () {
        if (!this.snapShotRequest) return;

        const req = this.snapShotRequest;

        html2canvas(this.el.canvas).then(canvas => {
            console.log(canvas);
            req(canvas.toDataURL());
        });

        this.snapShotRequest = null;
    }
});