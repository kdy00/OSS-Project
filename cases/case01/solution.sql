-- Case 001 reference solution: must return exactly one row.
SELECT s.name
FROM students s
JOIN club_membership c ON s.student_id = c.student_id
JOIN room_access_log r ON s.student_id = r.student_id
JOIN cafe_purchases  p ON s.student_id = p.student_id
WHERE c.club = 'Film'
  AND r.access_time BETWEEN '1400' AND '1440'
  AND p.item = 'Matcha Latte';
