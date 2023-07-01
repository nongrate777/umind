var links = document.querySelectorAll('.sidebar-navigation .sidebar-link');
var sections = document.querySelectorAll('h2');

function highlightLink() {
    var currentScroll = window.pageYOffset;

    sections.forEach(function(section, index) {
        var topOffset = section.offsetTop;
        var bottomOffset = topOffset + section.offsetHeight;

        if (currentScroll >= topOffset && currentScroll < bottomOffset) {
            links.forEach(function(link) {
                link.classList.remove('active');
            });

            links[index].classList.add('active');
        }
    });
}

window.addEventListener('scroll', highlightLink);
