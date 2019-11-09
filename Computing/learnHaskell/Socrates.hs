import Control.Monad
dot = ap (const ap) const
data Socrates = Socrates
data Man = Man
data Mortal = Mortal
p Man = Mortal
q Socrates = Man