const config = require('./docusaurus.config');
const { sidebarsNavModules } = require('@commitdev/zero-doc-site-common-elements');

module.exports = {
  sidebar: [
    {
      type: 'autogenerated',
      dirName: '.'
    },
    sidebarsNavModules(config),
  ],
};
