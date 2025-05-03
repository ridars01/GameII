// gather all box instances into an array
var boxes = array_create(0)
with (obj_box) {
    array_push(boxes, id)
}

// shuffle the boxes
array_shuffle(boxes)

// assign to the variable in each box
for (var i = 0; i < 3; i++) {
    boxes[i].myObject = obj_key;
}

boxes[3].myObject = obj_skey;
