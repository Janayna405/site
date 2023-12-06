let dropdown = document.querySelector('.menu'),//ul
submenu = document.querySelector('.sub-mnu)'), // ul li ul 
buttonClick = document.querySelector('.check-button'),//button
humburger = document.querySelector('.menu-icon');

buttonClick.addEventListen('click', () => {
    dropdown.classList.toggle('show-dropdown');
    submenu.classList.toggle('show-dropdown');
    if(submenu){
        submenu.classList.toggle('show-dropdown')
    }
    humburger.classList.toggle('animate-button');
})

