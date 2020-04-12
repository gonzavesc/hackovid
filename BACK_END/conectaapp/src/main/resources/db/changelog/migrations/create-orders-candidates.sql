CREATE TABLE order_candidates(
    id varchar(255) not null,
    order_amount int,
    contact_identifier varchar(9)
);

CREATE TABLE order_candidate_neighbor_indexes(
    id varchar(255) not null,
    neighbor_index long
);