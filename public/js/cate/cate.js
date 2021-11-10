var core = {};
var plugins = ['contextmenu', 'dnd', 'search', 'state', 'wholerow', 'changed'];

core.themes = {
  variant: 'large',
  striped: true,
};

core.check_callback = true;

core.data = {
  url: function (node) {
    return '/api/tree';
  },
  data: function (node) {
    return { id: node.id };
  },
};

function onChangedTree(e, data) {
  console.log(data);
  // console.log(data.changed.selected); // newly selected
  // console.log(data.changed.deselected); // newly deselected
}

function onCreatedTree(e, data) {
  console.log(data);
  // console.log(data.changed.selected); // newly selected
  // console.log(data.changed.deselected); // newly deselected
}

$('#jstreeWrap')
  .jstree({ core: core, plugins: plugins })
  .on('changed.jstree', onChangedTree)
  .on('create_node.jstree', onCreatedTree);
