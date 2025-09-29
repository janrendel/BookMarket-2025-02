CREATE TABLE address
(
    id          BIGINT AUTO_INCREMENT NOT NULL,
    customer_id VARCHAR(255) NULL,
    name        VARCHAR(255) NULL,
    phone       VARCHAR(255) NULL,
    email       VARCHAR(255) NULL,
    address     VARCHAR(255) NULL,
    CONSTRAINT pk_address PRIMARY KEY (id)
);

CREATE TABLE customer
(
    id          BIGINT AUTO_INCREMENT NOT NULL,
    customer_id VARCHAR(255) NULL,
    name        VARCHAR(255) NULL,
    phone       VARCHAR(255) NULL,
    address_id  BIGINT NULL,
    CONSTRAINT pk_customer PRIMARY KEY (id)
);

CREATE TABLE order_item
(
    id             BIGINT NOT NULL,
    book_id        VARCHAR(255) NULL,
    quantity       INT    NOT NULL,
    total_price    DECIMAL NULL,
    order_order_id BIGINT NULL,
    CONSTRAINT pk_orderitem PRIMARY KEY (id)
);

CREATE TABLE orders
(
    order_id    BIGINT NOT NULL,
    customer_id BIGINT NULL,
    shipping_id BIGINT NULL,
    total       DECIMAL NULL,
    CONSTRAINT pk_orders PRIMARY KEY (order_id)
);

CREATE TABLE shipping
(
    id         INT AUTO_INCREMENT NOT NULL,
    name       VARCHAR(255) NULL,
    address_id BIGINT NULL,
    CONSTRAINT pk_shipping PRIMARY KEY (id)
);

ALTER TABLE customer
    ADD CONSTRAINT uc_customer_address UNIQUE (address_id);

ALTER TABLE orders
    ADD CONSTRAINT uc_orders_customer UNIQUE (customer_id);

ALTER TABLE orders
    ADD CONSTRAINT uc_orders_shipping UNIQUE (shipping_id);

ALTER TABLE shipping
    ADD CONSTRAINT uc_shipping_address UNIQUE (address_id);

ALTER TABLE customer
    ADD CONSTRAINT FK_CUSTOMER_ON_ADDRESS FOREIGN KEY (address_id) REFERENCES address (id);

ALTER TABLE order_item
    ADD CONSTRAINT FK_ORDERITEM_ON_ORDER_ORDER FOREIGN KEY (order_order_id) REFERENCES orders (order_id);

ALTER TABLE orders
    ADD CONSTRAINT FK_ORDERS_ON_CUSTOMER FOREIGN KEY (customer_id) REFERENCES customer (id);

ALTER TABLE orders
    ADD CONSTRAINT FK_ORDERS_ON_SHIPPING FOREIGN KEY (shipping_id) REFERENCES customer (id);

ALTER TABLE shipping
    ADD CONSTRAINT FK_SHIPPING_ON_ADDRESS FOREIGN KEY (address_id) REFERENCES address (id);