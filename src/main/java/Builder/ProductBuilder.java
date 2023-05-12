package Builder;

public class ProductBuilder {
        private int product_id;
        private String product_name;
        private int category_id;
        private String description;
        private double price;
        private double sale_price;
        private int enable;
        private String productImg_path;
        private int quantity;

        


        // public ProductBuilder(Builder builder) {
        //     this.product_id = builder.product_id;
        //     this.product_name = builder.product_name;
        //     this.category_id = builder.category_id;
        //     this.description = builder.description;
        //     this.price = builder.price;
        //     this.sale_price = builder.sale_price;
        //     this.enable = builder.enable;
        //     this.productImg_path = builder.productImg_path;
        //     this.quantity = builder.quantity;
        // }
            



        
        public static class Builder {
            private int product_id;
            private String product_name;
            private int category_id;
            private String description;
            private double price;
            private double sale_price;
            private int enable;
            private String productImg_path;
            private int quantity;
    
            public Builder(int product_id) {
                this.product_id = product_id;
            }
    
            public Builder setProductName(String product_name) {
                this.product_name = product_name;
                return this;
            }
    
            public Builder setCategory_id(int category_id) {
                this.category_id = category_id;
                return this;
            }
    
            public Builder setDescription(String description) {
                this.description = description;
                return this;
            }
    
            public Builder setPrice(double price) {
                this.price = price;
                return this;
            }
    
            public Builder setSalePrice(double sale_price) {
                this.sale_price = sale_price;
                return this;
            }
    
            public Builder setEnable(int enable) {
                this.enable = enable;
                return this;
            }
    
            public Builder setProductImgPath(String productImg_path) {
                this.productImg_path = productImg_path;
                return this;
            }
    
            public Builder setQuantity(int quantity) {
                this.quantity = quantity;
                return this;
            }
    
            public ProductBuilder build() {
                return new ProductBuilder(product_id, product_name, category_id, description, price, sale_price, enable, productImg_path, quantity);
                // return new ProductBuilder(this);
            }
        }
    
        public int getProduct_id() {
            return product_id;
        }

        public String getProduct_name() {
            return product_name;
        }

        public int getCategory_id() {
            return category_id;
        }

        public String getDescription() {
            return description;
        }

        public double getPrice() {
            return price;
        }

        public double getSale_price() {
            return sale_price;
        }

        public int getEnable() {
            return enable;
        }

        public String getProductImg_path() {
            return productImg_path;
        }

        public int getQuantity() {
            return quantity;
        }

        public ProductBuilder(int product_id, String product_name, int category_id, String description, double price, double sale_price, int enable, String productImg_path) {
            this.product_id = product_id;
            this.product_name = product_name;
            this.category_id = category_id;
            this.description = description;
            this.price = price;
            this.sale_price = sale_price;
            this.enable = enable;
            this.productImg_path = productImg_path;
        }
    
        public ProductBuilder(int product_id, String product_name, int category_id, String description, double price, double sale_price, int enable, String productImg_path, int quantity) {
            this.product_id = product_id;
            this.product_name = product_name;
            this.category_id = category_id;
            this.description = description;
            this.price = price;
            this.sale_price = sale_price;
            this.enable = enable;
            this.productImg_path = productImg_path;
            this.quantity = quantity;
        }
    
}
