module.exports={
  pins:
    $(function(){
      var InfiniteScroll = require('infinite-scroll');
      var Masonry = require('masonry-layout');
      var imagesLoaded = require('imagesloaded');

      var elem = document.querySelector('.main');
      var msnry = new Masonry( elem, {
        // options
        itemSelector: '.post',
        columnWidth: 210,
        gutter: 4
      });

      // make imagesLoaded available for InfiniteScroll
      InfiniteScroll.imagesLoaded = imagesLoaded;
    
      var infScroll = new InfiniteScroll( '.container', {
        // options...
        path: '.pagination a',
        append: '.post',
        outlayer: msnry,
        loadOnScroll: true
      });

    })
}

