/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package template;

/**
 *
 * @author khanh
 */
public abstract class PageTemplate {
 
    protected void showHeader() {
        System.out.println("<header />");
    }
 
    protected void showNavigation() {
        System.out.println("<nav />");
    }
 
    protected void showFooter() {
        System.out.println("<footer />");
    }
 
    protected abstract void showBody();
 
    public final void showPage() {
        showHeader();
        showNavigation();
        showBody();
        showFooter();
    }
}