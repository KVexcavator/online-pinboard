module.exports={
  pins:
    $(function(){
      var InfiniteScroll = require('infinite-scroll');
      var Masonry = require('masonry-layout')
      var elem = document.querySelector('.container');
      var msnry = new Masonry( elem, {
        // options
        itemSelector: '.post',
        columnWidth: 200
      });
    
      var infScroll = new InfiniteScroll( '.container', {
        // options...
        path: '.pagination a',
        append: '.post',
        outlayer: msnry,
        history: false,
      });
    })
}

