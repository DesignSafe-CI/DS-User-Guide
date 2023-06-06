/* FAQ: jQuery element selector is used cuz Firefox does not support :has() */

/* To add class for nav items that have sub-navs */
$('.wy-menu-vertical li:has(li)').each(function() { 
  this.classList.add('has-list');
});

/* To change specific internal links to external links */
/* FAQ: The array should be an array of dictionaries of oldHref and newHref */
(window.DS_NAVIGATION_REDIRECTS || []).forEach( dict => {
  const link = document.querySelector('[href*="' + dict.oldHref + '"]');
  const subnav = link.parentNode.getElementsByTagName('ul')[ 0 ];

  subnav.remove();
  link.href = dict.newHref;
});

/* To add icon to nav items that are external links */
document.querySelectorAll(`
  .wy-menu-vertical a:not(.internal),
  .wy-menu-vertical a[href^="http"]
`).forEach( a => {
  const icon = document.createElement('i');

  icon.classList.add('fa', 'fa-external-link');
  a.prepend(icon);
});
