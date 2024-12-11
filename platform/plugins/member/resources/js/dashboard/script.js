$(() => {
    function handleToggleDrawer() {
        $('.navbar-toggler').on('click', function () {
            $('.ps-drawer--mobile').addClass('active')
            $('.ps-site-overlay').addClass('active')
        })

        $('.ps-drawer__close').on('click', function () {
            $('.ps-drawer--mobile').removeClass('active')
            $('.ps-site-overlay').removeClass('active')
        })

        $('body').on('click', function (e) {
            if ($(e.target).siblings('.ps-drawer--mobile').hasClass('active')) {
                $('.ps-drawer--mobile').removeClass('active')
                $('.ps-site-overlay').removeClass('active')
            }
        })
    }

    handleToggleDrawer()
})
