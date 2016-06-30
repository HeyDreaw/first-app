$(document).on('ready page:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
	
$('.img-zoom').elevateZoom({
    		constrainType:"height",
    		constrainSize:274,
    		zoomType: "lens",
    		containLensZoom: true,
    		scrollZoom: true,
  	});
	
});