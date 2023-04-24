/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package template;

/**
 *
 * @author khanh
 */
public class TemplateMethodPattern {
 
    public static void main(String[] args) {
         
        PageTemplate homePage = new HomePage();
        homePage.showPage();
        
        System.out.println();
        PageTemplate aboutPage = new AboutPage();
        aboutPage.showPage();
        
        System.out.println();
        PageTemplate menuPage = new MenuPage();
        menuPage.showPage();
        
        System.out.println();
        PageTemplate reservationPage = new ReservationPage();
        reservationPage.showPage();
        
        System.out.println();
        PageTemplate blogPage = new BlogPage();
        blogPage.showPage();
        
        System.out.println();
        PageTemplate contactPage = new ContactPage();
        contactPage.showPage();
    }
}