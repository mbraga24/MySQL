 SELECT REVERSE(UPPER("Why does my cat look at me with such hatred?"));

-- +----------------------------------------------------------------+
-- | REVERSE(UPPER("Why does my cat look at me with such hatred?")) |
-- +----------------------------------------------------------------+
-- | ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW                   |
-- +----------------------------------------------------------------+

 SELECT
   REPLACE
   (
   CONCAT('I', ' ', 'like', ' ', 'cats'),
   ' ',
   '-'
   ) AS 'Replace and Concat';

-- +--------------------+
-- | Replace and Concat |
-- +--------------------+
-- | I-like-cats        |
-- +--------------------+

 SELECT REPLACE(title, ' ', '->') AS 'Title' FROM books;

-- +--------------------------------------------------------------+
-- | Title                                                        |
-- +--------------------------------------------------------------+
-- | The->Namesake                                                |
-- | Norse->Mythology                                             |
-- | American->Gods                                               |
-- | Interpreter->of->Maladies                                    |
-- | A->Hologram->for->the->King:->A->Novel                       |
-- | The->Circle                                                  |
-- | The->Amazing->Adventures->of->Kavalier->&->Clay              |
-- | Just->Kids                                                   |
-- | A->Heartbreaking->Work->of->Staggering->Genius               |
-- | Coraline                                                     |
-- | What->We->Talk->About->When->We->Talk->About->Love:->Stories |
-- | Where->I'm->Calling->From:->Selected->Stories                |
-- | White->Noise                                                 |
-- | Cannery->Row                                                 |
-- | Oblivion:->Stories                                           |
-- | Consider->the->Lobster                                       |
-- +--------------------------------------------------------------+

SELECT author_lname AS 'Forwards', REVERSE(author_lname) AS 'Backwards' FROM books;

-- +----------------+----------------+
-- | Forwards       | Backwards      |
-- +----------------+----------------+
-- | Lahiri         | irihaL         |
-- | Gaiman         | namiaG         |
-- | Gaiman         | namiaG         |
-- | Lahiri         | irihaL         |
-- | Eggers         | sreggE         |
-- | Eggers         | sreggE         |
-- | Chabon         | nobahC         |
-- | Smith          | htimS          |
-- | Eggers         | sreggE         |
-- | Gaiman         | namiaG         |
-- | Carver         | revraC         |
-- | Carver         | revraC         |
-- | DeLillo        | olliLeD        |
-- | Steinbeck      | kcebnietS      |
-- | Foster Wallace | ecallaW retsoF |
-- | Foster Wallace | ecallaW retsoF |
-- +----------------+----------------+