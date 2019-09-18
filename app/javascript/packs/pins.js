
const InfiniteScroll = require('infinite-scroll');
const Masonry = require('masonry-layout');
const imagesLoaded = require('imagesloaded');

$(function(){
      
  const grid = document.querySelector('.main');
  const msnry = new Masonry( grid, {
    itemSelector: '.post',
    columnWidth: 210,
    gutter: 4,
    visibleStyle: { transform: 'translateY(0)', opacity: 1 },
    hiddenStyle: { transform: 'translateY(100px)', opacity: 0 }, 
  });

  // initial items reveal
  imagesLoaded( grid, function() {
    grid.classList.remove('container');
    msnry.options.itemSelector = '.post';
    msnry.reloadItems()
  });

  // make imagesLoaded available for InfiniteScroll
  InfiniteScroll.imagesLoaded = imagesLoaded;

  var nextURL;

  function updateNextURL( doc ) {
    nextURL = $( doc ).find('.pagination a').attr('href');
  }
  // get initial nextURL
  updateNextURL( document );

  var infScroll = new InfiniteScroll( '.main', {
    path: function() {
      return nextURL;
    },
    append: '.post',
    outlayer: msnry,
    status: '.page-load-status'
  });

  infScroll.on( 'load', function( response ) {
    updateNextURL( response );
  });

  //console.log(infScroll.getPath())


})

  
 