package Shoes.entity;

public class Cart {
    private int account_id;
    private int product_id;
    private int quality;
    private int order;
    

    
    public Cart(int account_id, int product_id, int quality, int order) {
        this.account_id = account_id;
        this.product_id = product_id;
        this.quality = quality;
        this.order = order;
    }
    public int getAccount_id() {
        return account_id;
    }
    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }
    public int getProduct_id() {
        return product_id;
    }
    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
    public int getQuality() {
        return quality;
    }
    public void setQuality(int quality) {
        this.quality = quality;
    }
    public int getOrder() {
        return order;
    }
    public void setOrder(int order) {
        this.order = order;
    }

}
