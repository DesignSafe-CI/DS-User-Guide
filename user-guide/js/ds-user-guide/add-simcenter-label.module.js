/* FAQ: jQuery element selector is used cuz Firefox does not support :has() */

function createLabel() {
  const space = document.createTextNode(' ');
  const small = document.createElement('small');

  small.textContent = '(SimCenter)';

  return [space, small];
}

/* to add label to external links in nav menu */
document.querySelectorAll(`
  .wy-menu a:where( [href*="nheri-simcenter.github.io"] )
`).forEach( a => {
  const labelElements = createLabel();

  a.append(...labelElements);
});
