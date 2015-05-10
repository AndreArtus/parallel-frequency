module FrequencyList where

import Data.List
import Shared (sortCount, FrequencyCount)

frequency :: Ord a => [a] -> FrequencyCount a
frequency as = sortCount $ map (\a -> (head a, length a)) (group . sort $ as)

-- Prelude> let l = [4,5,6,4,5,6,7,7,2,3,5,1,2,3,4,5,4,3,4,3,6,2]
-- Prelude Data.List> group . sort $ l
-- [[1],[2,2,2],[3,3,3,3],[4,4,4,4,4],[5,5,5,5],[6,6,6],[7,7]]
