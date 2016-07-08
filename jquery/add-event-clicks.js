<script type="text/javascript">
jQuery(document).ready(function() {
    jQuery(".BoxLink").each(function(){ 
        var classes = jQuery(this).attr('class').split(/\s+/);
        var link = classes[1];
        var actualLink = link.substring(5);
        jQuery(this).find(".bt_image").on("click",function(){
            window.location.href = actualLink;
        });
    });
});
</script>