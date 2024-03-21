-- Creates an index idx_name_first on the names table and first letter of a name.
-- Only the first letter of name must be indexed.

CREATE INDEX idx_name_first
ON names(name(1));
