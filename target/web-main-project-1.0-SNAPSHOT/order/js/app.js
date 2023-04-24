let btn = document.getElementsByClassName('see-more-btn')[0];
let btnEvent = document.getElementById('btn-event');
var flag = false;
var flagEvent = false;

btn.addEventListener('click', seeMoreClick);
function seeMoreClick() {
    let card = document.getElementById('see-more');
    let x = document.getElementById('id-list-cards');
    if (flag == false) {
        card.style.display = 'flex';
        card.style.marginTop = '-100px';
        x.style.paddingBottom = '60px';
        btn.innerHTML = 'Ẩn bớt';
        flag = true;
    }
    else {
        flag = false;
        card.style.display = 'none';
        card.style.marginTop = '100px';
        x.style.paddingBottom = 'unset';
        btn.innerHTML = 'Chi tiết';
    }
}   

btnEvent.addEventListener('click', seeMoreEvent);
function seeMoreEvent() {
    let card = document.getElementById('see-more-event');
    let x = document.getElementById('id-list-cards1');
    if (flagEvent == false) {
        card.style.display = 'flex';
        card.style.marginTop = '-100px';
        x.style.paddingBottom = '60px';
        btnEvent.innerHTML = 'Ẩn bớt';
        flagEvent = true;
    }
    else {
        flagEvent = false;
        card.style.display = 'none';
        card.style.marginTop = '100px';
        x.style.paddingBottom = 'unset';
        btnEvent.innerHTML = 'Chi tiết';
    }
}

let btnOrder = document.querySelector('#No1');
btnOrder.addEventListener('click', orderFun);
function orderFun(){
    tmp = btnOrder.id;
}