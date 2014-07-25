var Point = (function(undefined) {
    'use strict';

    function Point(x, y) {
        this.origin = {
            x: 0,
            y: 0
        },
        this.x = x;
        this.y = y;
    }

    Point.prototype = {

        distance: function(other) {
            if (!other) {
                other = this.origin
            };
            return Math.sqrt(Math.pow(this.x - other.x, 2) + Math.pow(this.y - other.y, 2))
        },

        toString: function() {
            return "x: " + this.x + ", y: " + this.y;
        }
    }

    return Point;

}());

var LabeledPoint = (function(Point, undefined) {
    'use strict';

    function LabeledPoint(label, x, y) {
        this.label = label;
        Point.call(this, x, y);
    }

    LabeledPoint.prototype = Object.create(Point.prototype);
    LabeledPoint.prototype.toString = function() {
        return "label: " + this.label + ", " + Point.prototype.toString.call(this);
    }

    return LabeledPoint;

}(Point));

var point = new LabeledPoint("my point", 4, 3);
console.log(point.toString());
console.log("distance: ", point.distance());
