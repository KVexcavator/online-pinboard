module.exports={
  pins:
    $(function(){
      var InfiniteScroll = require('infinite-scroll');
    
      var infScroll = new InfiniteScroll( '.container', {
        // options...
        path: '.pagination a',
        append: '.post',
        history: false,
      });
    })
}

