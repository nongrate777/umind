    // Функция для создания табов
    function createTabs() {
    var tabContainer = document.querySelector('.tabs-container');
    var tabContent = document.querySelector('.technologies__main');
    var tabTitles = document.querySelectorAll('.technologies__inner-title');

        // Проверяем, существуют ли уже кнопки табов
        if (tabContainer.children.length === 0) {
            // Создаем кнопки табов
            for (var i = 0; i < tabTitles.length; i++) {
                var tabTitle = tabTitles[i];
                var tabButton = document.createElement('button');
                tabButton.classList.add('tab-button');
                tabButton.textContent = tabTitle.textContent;
                tabContainer.appendChild(tabButton);
            }
        }

    // Показываем первую вкладку по умолчанию
    var defaultTab = tabContent.firstElementChild;
    defaultTab.classList.add('active');

    // Обработчик клика по кнопке таба
    var tabButtons = document.querySelectorAll('.tab-button');
    tabButtons.forEach(function(button, index) {
    button.addEventListener('click', function() {
    // Скрытие всех вкладок и удаление класса "active" у кнопок
    tabContent.querySelectorAll('.technologies__inner').forEach(function(tab) {
    tab.classList.remove('active');
});
    tabButtons.forEach(function(btn) {
    btn.classList.remove('active');
});

    // Показ выбранной вкладки и добавление класса "active" для кнопки
    var selectedTab = tabContent.children[index];
    selectedTab.classList.add('active');
    button.classList.add('active');
});
});
}

    // Вызов функции создания табов при загрузке страницы
    window.addEventListener('load', function() {
    // Проверка ширины экрана для активации только в мобильной версии
    if (window.innerWidth <= 767) {
    createTabs();
}
});

    // Вызов функции создания табов при изменении размера экрана
    window.addEventListener('resize', function() {
    // Проверка ширины экрана для активации только в мобильной версии
    if (window.innerWidth <= 767) {
    createTabs();
} else {
    // Удаление табов при переходе на большие экраны
    var tabContainer = document.querySelector('.tabs-container');
    tabContainer.innerHTML = '';
}
});
