/**
 * drawio.js | https://theme-next.org/docs/tag-plugins/drawio
 */

/* global hexo */

'use strict';

function drawio(args, content) {
  return `<div class="drawio-placeholder" data-src="${args[0]}"></div>`;
}

hexo.extend.tag.register('drawio', drawio, {ends: false});
