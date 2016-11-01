{literal}
<script>
(function($, z){
    if(!z)
        return;
    
    $(function(){
        var btn = $('.zopim-button');
        
        // Show button
        btn.show();
        
        function setBtnState(){
            if($zopim.livechat.window.getDisplay())
                btn.addClass('chat-window-showed');
            else
                btn.removeClass('chat-window-showed');
        }
        
        btn.on('click', function(e){
            e.preventDefault();
            $zopim.livechat.window.show();
            setBtnState();
        })
        
        setInterval(function(){
            setBtnState();
        }, 150);
    });
})($, $zopim || false);
</script>
{/literal}