CREATE TABLE users (
    id binary(16) PRIMARY KEY,
    id_text varchar(36) generated always as
        (insert(insert (insert (insert (hex(id),9,0,'-'),14,0,'-'),19,0,'-'),24,0,'-')) virtual
);

INSERT INTO users (`id`) VALUES
 (UUID_TO_BIN('11111111-1234-5678-1234-567812345678')),
 (UUID_TO_BIN('22222222-1234-5678-1234-567812345678'))
 ;

CREATE TABLE accounts(
    `id` binary(16) PRIMARY KEY,
    `user_id` binary(16),
    `amount` DECIMAL(10,5) UNSIGNED NOT NULL DEFAULT 0,
    id_text varchar(36) generated always as
        (insert(insert (insert (insert (hex(id),9,0,'-'),14,0,'-'),19,0,'-'),24,0,'-')) virtual
);

INSERT INTO accounts (id,user_id) VALUES (
  UUID_TO_BIN('11111111-0000-5678-1234-567812345678'),
  UUID_TO_BIN('11111111-1234-5678-1234-567812345678')
),(
    UUID_TO_BIN('22222222-0000-5678-1234-567812345678'),
    UUID_TO_BIN('22222222-1234-5678-1234-567812345678')
);


CREATE TABLE transactions(
    id binary(16) PRIMARY KEY,
    account_from binary(16),
    account_to binary(16),
    id_text varchar(36) generated always as
        (insert(insert (insert (insert (hex(id),9,0,'-'),14,0,'-'),19,0,'-'),24,0,'-')) virtual
);

