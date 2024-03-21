-- Creates an index idx_name_first_score on the names table and first letter of name and score fields.
-- Only the first letter of a name AND score must be indexed

CREATE INDEX idx_name_first_score
ON names(name(1), score);
