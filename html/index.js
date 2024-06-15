window.addEventListener('message', function(event) {
    if (event.data.show == true) {
        if (event.data.pages) {
            $.each(event.data.pages, function(i, page) {
                    {$('#inner').append('<div><img src="' + page.url + '" width=' + event.data.size.width + ' height=' + event.data.size.height + '></div>')}
            });

            $('#inner').turn({
                gradients: true,
                autoCenter: true,
                width: event.data.size.width*2,
                height: event.data.size.height,
                page: 1,
                acceleration: true,
            });

            $('body').css('display', 'block');
        }
    } else if (event.data.show == false) {
        $('body').css('display', 'none');
    }

    $(document).keyup(function(e) {
        if (e.keyCode == 27) {
            $('body').css('display', 'none');
            $('#inner').turn('page', 1);
            $('#inner').turn('destroy');
            inner.style = "";
            $.post(`https://${GetParentResourceName()}/escape`, JSON.stringify({}));
        }
    });
});
