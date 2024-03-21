-- Creates a stored procedure ComputeAverageWeightedScoreForUsers.
-- computes and stores all students’ average weighted score.

DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
	UPDATE users AS users,
	       (SELECT users.id, SUM(score * weight) / SUM(weight) AS weight_avg
	       FROM users AS users JOIN corrections AS correct ON users.id = correct.user_id
	       JOIN projects AS proj ON correct.project_id = proj.id
	       GROUP BY users.id)

	AS weight
	SET users.average_score = weight.weight_avg
	WHERE users.id = weight.id;
END $$
DELIMITER ;
