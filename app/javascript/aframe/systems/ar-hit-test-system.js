export default () => {
    console.log('init')
    AFRAME.registerSystem('ar-hit-test', {
        init: function () {
            this.xrHitTestSource = null;
            this.viewerSpace = null;
            this.refSpace = null;
            this.markers = [];
    
            this.el.sceneEl.renderer.xr.addEventListener('sessionend', ev => {
                this.viewerSpace = null;
                this.refSpace = null;
                this.xrHitTestSource = null;
            });
            this.el.sceneEl.renderer.xr.addEventListener('sessionstart', ev => {
                let session = this.el.sceneEl.renderer.xr.getSession();
    
                session.requestReferenceSpace('viewer').then(space => {
                    this.viewerSpace = space;
                    session.requestHitTestSource({ space: this.viewerSpace })
                            .then(hitTestSource => {
                                this.xrHitTestSource = hitTestSource;
                            });
                });
                session.requestReferenceSpace('local-floor').then(space => this.refSpace = space);
            });
        },
    
        registerMarker: function (marker) {
            this.markers.push(marker);
        },
    
        unregisterMarker: function (marker) {
            let index = this.entities.indexOf(marker);
            this.markers.splice(index, 1);
        },
    
        tick: function () {
            if (!this.el.sceneEl.is('ar-mode') || 
                !this.viewerSpace || 
                !this.xrHitTestSource ||
                this.markers.length <= 0) return;
            
            let frame = this.el.sceneEl.frame;
            let xrViewerPose = frame.getViewerPose(this.refSpace);
    
            if (!xrViewerPose) return;
    
            let hitTestResults = frame.getHitTestResults(this.xrHitTestSource);
            if (hitTestResults.length <= 0) return;
    
            let pose = hitTestResults[0].getPose(this.refSpace);
            let inputMat = new THREE.Matrix4();
            inputMat.fromArray(pose.transform.matrix);
    
            let position = new THREE.Vector3();
            position.setFromMatrixPosition(inputMat);
            this.markers.forEach(marker => marker.onHit(position)); 
        }
    });    
};
