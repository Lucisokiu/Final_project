gsap.registerPlugin(ScrollTrigger);

gsap.from(".img-header" ,{
    scrollTrigger: ".img-header",
    x: 200,
    duration: 1.2,
});

gsap.from('.search-container', {
   scrollTrigger: '.search-container',
    duration: 1.2,
   x: -50,
});

gsap.from('.header-content', {
   scrollTrigger: '.header-content',
    duration: 1.2,
   x: -50,
});

let divHot = document.getElementsByClassName('hot-container');

gsap.to(divHot, {
    scrollTrigger: {
        trigger: divHot,
        start: "top 90%",
        end: "170% 60%",
        // markers: true,
        toggleActions: "play reset play reset",
    },
    y: -150,
    opacity: 1,
    duration: 1.8,
});

let divBreakfast = document.getElementsByClassName('breakfast');
let imgBreakfast=divBreakfast[0].getElementsByTagName('img');
let divChill=divBreakfast[0].getElementsByTagName('div');

gsap.to(imgBreakfast, {
    scrollTrigger: {
        trigger: divBreakfast,
        // markers: true,
        start: "top 90%",
        end: "bottom 10",
        toggleActions: "restart none restart none",
    },
    duration: 1.2,
    opacity: 1,
    x: 100,
});

gsap.to(divChill, {
    scrollTrigger: {
        trigger: divBreakfast,
        // markers: true,
        start: "top 90%",
        end: 'bottom 10',
        toggleActions: "restart none restart none",
    },
    duration: 1.2,
    x: -100,
    opacity: 1,
});

let listPopCards = document.getElementsByClassName('pop');
let popCard = listPopCards[0].getElementsByClassName('card');
let popEventCard=listPopCards[1].getElementsByClassName('card');

for (let i = 0; i < popCard.length; i++) {
    const element = popCard[i];
    gsap.to(element, {
        scrollTrigger: {
            trigger: divBreakfast,
            // markers: true,
            start: '25% center',
            toggleActions: 'restart none none none',
        },
        y: -100,
        duration: 1.2,
    })
}

let divEvent=document.getElementsByClassName('event');
let imgEvent=divEvent[0].getElementsByTagName('img');
let eventChill=divEvent[0].getElementsByTagName('div');

gsap.to(imgEvent, {
    scrollTrigger: {
        trigger: divEvent,
        // markers: true,
        start: "top 90%",
        end: "bottom 10",
        toggleActions: "restart none restart none",
    },
    duration: 1.2,
    opacity: 1,
    x: 100,
});

gsap.to(eventChill, {
    scrollTrigger: {
        trigger: divEvent,
        // markers: true,
        start: "top 90%",
        end: 'bottom 10',
        toggleActions: "restart none restart none",
    },
    duration: 1.2,
    x: -100,
    opacity: 1,
});

for (let i = 0; i < popEventCard.length; i++) {
    const element = popEventCard[i];
    gsap.to(element, {
        scrollTrigger: {
            trigger: divEvent,
            // markers: true,
            start: '25% center',
            toggleActions: 'restart none none none',
        },
        y: -100,
        duration: 1.2,
    })
}