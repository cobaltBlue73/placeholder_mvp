HTMLCanvasElement.prototype.getContext = function(origFn) {
    return function(type, attributes) {
        if (type === 'webgl') {
            attributes = Object.assign({}, attributes, {
                preserveDrawingBuffer: true,
            });
        }
        return origFn.call(this, type, attributes);
    };
}(HTMLCanvasElement.prototype.getContext);