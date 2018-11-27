def selects_the_titles_of_all_projects_and_their_pledge_amounts
  "SELECT projects.title, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
  "SELECT users.name, users.age, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) AS amount_left FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title HAVING amount_left >= 0;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
  "SELECT users.name, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name ORDER BY SUM(pledges.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT projects.category, pledges.amount FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
  "SELECT projects.category, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'books' GROUP BY projects.category;"
end
def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age, SUM(pledges.amount) FROM Pledges INNER JOIN Users ON Pledges.user_id = Users.id GROUP BY(users.name) ORDER BY(users.name) ASC"
end
 def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT projects.title, SUM(pledges.amount) - projects.funding_goal FROM Projects INNER JOIN Pledges ON Projects.id = Pledges.project_id GROUP BY(projects.title) HAVING SUM(pledges.amount) >= projects.funding_goal ORDER BY(projects.title) ASC"
end
 def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
  "SELECT users.name, SUM(pledges.amount) FROM Users LEFT OUTER JOIN Pledges ON Users.id = Pledges.user_id GROUP BY(users.name) ORDER BY SUM(pledges.amount), users.name"
end
 def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT projects.category, pledges.amount FROM Pledges LEFT OUTER JOIN Projects ON pledges.project_id = projects.id WHERE projects.category = 'music'"
end
 def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT projects.category, SUM(pledges.amount) FROM Pledges LEFT OUTER JOIN Projects ON Pledges.project_id = Projects.id GROUP BY(projects.category) HAVING projects.category = 'books'"
end