def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY books.year"
  #expected output: [["Game of Thrones", 1996], ["A Clash of Kings", 1998], ["A Storm of Swords", 2000]]
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY length(motto) DESC LIMIT 1"
  #expected output: [["Tyrion Lannister", "A Lannister always pays his debts"]]
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species) FROM characters GROUP BY species ORDER BY count(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN subgenres on authors.id = subgenres.id"
  #expected output: [["George R. R. Martin", "medieval"], ["Second Author", "space opera"]]
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters on series.id = characters.series_id
    GROUP BY characters.species ORDER BY count(characters.species) ASC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
