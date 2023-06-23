document.addEventListener('DOMContentLoaded', function() {
    const tabButtons = document.querySelectorAll('.dev__tab-button');
    const tabItems = document.querySelectorAll('.tab-item');

    tabButtons.forEach(function(button) {
        button.addEventListener('click', function() {

            tabButtons.forEach(function(btn) {
                btn.classList.remove('active');
            });


            button.classList.add('active');


            const tabId = button.getAttribute('data-tab');
            tabItems.forEach(function(item) {
                if (item.id === tabId) {
                    item.classList.add('active');
                } else {
                    item.classList.remove('active');
                }
            });
        });
    });
});
