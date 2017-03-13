"use strict";

var sira_menu = $(".lx-main-menu", ".lx-wrapper");
var sira_settings = $(".lx-settings");

// Windows load event
$(window).on("load", function() {
    // Loader Fade Out
    $(".lx-loader", ".lx-wrapper").fadeOut();
    return false;
});

$(document).on("scroll", function() {
    if ($(this).scrollTop() > $(".lx-bars-chart").offset().top - 400) {
        // Loading bars
        for (var i = 0; i < $(".lx-bar", ".lx-bars-chart").length; i++) {
            $(".lx-bar:eq(" + i + ") .lx-bar-counter").text($(".lx-bar:eq(" + i + ")").attr("data-max") + "%");
            $(".lx-bar:eq(" + i + ") .lx-bar-fill").css("width", $(".lx-bar:eq(" + i + ")").attr("data-max") + "%");
        }
    }
    return false;
});

// Responsive color setting event
$(".lx-main-menu > i").on("click", function() {
    // Show/hide main menu
    if (sira_menu.css("left") === "-200px") {
        sira_menu.css("left", "0px");
        $(".lx-main-menu > i").attr("class", "fa fa-remove");
        sira_settings.css("right", "-175px");

    } else {
        sira_menu.css("left", "-200px");
        $(".lx-main-menu > i").attr("class", "fa fa-bars");
    }
    return false;
});

// Main menu event : show correspondant section
$(".lx-main-menu ul li a").on("click", function() {
    // Remove active class from menus
    $(".lx-main-menu ul li a").removeClass("active");
    // Set clicked menu active
    $(this).addClass("active");
    // Show correspondant scetion
    $('html, body').animate({
        scrollTop: $("." + $(this).attr("data-title")).offset().top
    }, 1000);
    menu.css("left", "-200px");
    $(".lx-main-menu > i").attr("class", "fa fa-bars");
    return false;
});

// Responsive color setting event
$(".lx-settings > i").on("click", function() {
    if (sira_settings.css("right") === "-175px") {
        sira_settings.css("right", "0px");
        $(".lx-main-menu > i").attr("class", "fa fa-bars");
        sira_menu.css("left", "-200px");
    } else {
        sira_settings.css("right", "-175px");
    }
    return false;
});

// Responsive color event
$(".lx-colors > a").on("click", function() {
    // Change style
    $("link[title='main']").attr("href", "css/" + $(this).attr("data-css-link"));
    return false;
});

// Contact Form Errors
$(".lx-contact form input[type='button']").on("click", function() {
    // Remove all errors
    $(".lx-contact form span").remove();
    $(".lx-contact form input[type='text']").css("border-right", "0px");
    $(".lx-contact form textarea").css("border-right", "0px");
    // Test fullname
    var fullname = $(".lx-contact form input[name='fullname']");
    if (fullname.val() === "") {
        fullname.after("<span>This field must be filled</span>").css("border-right", "3px solid #a94442");
    }
    // Test email
    var email = $(".lx-contact form input[name='email']");
    var patt = /^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;
    if (!patt.test(email.val())) {
        email.after("<span>Invalid Email</span>").css("border-right", "3px solid #a94442");
    }
    // Test message
    var txtarea = $(".lx-contact form textarea");
    if (txtarea.val() === "") {
        txtarea.after("<span>This field must be filled</span>").css("border-right", "3px solid #a94442");
    }
    return false;
});

// Remove email error
$(".lx-contact form input[name='email']").on("keyup", function() {
    var patt = /^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;
    if (patt.test($(this).val())) {
        $(this).css("border-right", "0px").next("span").remove();
    }
    return false;
});

// Remove fullname error
$(".lx-contact form input[name='fullname']").on("keyup", function() {
    if ($(this).val() !== "") {
        $(this).css("border-right", "0px").next("span").remove();
    }
    return false;
});

// Remove textarea error
$(".lx-contact form textarea").on("keyup", function() {
    if ($(this).val() !== "") {
        $(this).css("border-right", "0px").next("span").remove();
    }
    return false;
});