AFRAME.registerSystem('ar-hit-test', {
    schema: {
        marker: { type: 'selector' },
        referenceSpace: { type: 'string', default: 'local-floor' }
    },

    init: function() {
        this.xrHitTestSource = null;
        this.viewerSpace = null;
        this.refSpace = null;

        this.el.renderer.xr.addEventListener('sessionend', ev => {
            this.viewerSpace = null;
            this.refSpace = null;
            this.xrHitTestSource = null;
        });
        this.el.renderer.xr.addEventListener('sessionstart', ev => {
            let session = this.el.renderer.xr.getSession();
            const self = this;
            session.addEventListener('select', () => {
                if (!self.data.marker) return;

                self.el.emit('hitSelect', { hitPosition: self.data.marker.object3D.position });
            });

            session.requestReferenceSpace('viewer').then(space => {
                this.viewerSpace = space;
                session.requestHitTestSource({ space: this.viewerSpace })
                    .then(hitTestSource => {
                        this.xrHitTestSource = hitTestSource;
                    });
            });
            session.requestReferenceSpace(this.data.referenceSpace).then(space => this.refSpace = space);
        });
    },

    tick: function() {
        if (!this.el.is('ar-mode') ||
            !this.viewerSpace ||
            !this.xrHitTestSource ||
            !this.data.marker) return;

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

        this.data.marker.object3D.position.copy(position);
    }
});