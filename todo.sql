CREATE TABLE todos (
  id SERIAL PRIMARY KEY UNIQUE NOT NULL,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(3000) NULL,
  priority INT NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('Laundry','Dont forget to fold',2,'2017-06-01 11:20:00','2017-06-05 11:20:00');

INSERT INTO todos (title, details, priority, created_at) VALUES
  ('Cook','chili',1,'2017-06-01 11:40:00'),
  ('Eat','chili',1,'2017-06-01 11:40:00'),
  ('Read Newspaper','and leave abrasive comments',3,'2017-06-01 11:40:00'),
  ('Exercise','3 sets of 10 reps',2,'2017-06-01 11:40:00'),
  ('Clean','Sweep, mop, dishes, wipe down counters',4,'2017-06-01 11:40:00');

SELECT * FROM todos WHERE completed_at IS NOT NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = now() WHERE id=2;

DELETE FROM todos WHERE completed_at IS NOT NULL;
