module Yi.Snippets.Haskell where

import Yi.Snippets

hsFunction :: SnippetCmd ()
hsFunction = snippet $
  cursorWith 1 "f" & " :: " & cursor 2 & "\n" &
  cursor 3 & " = " & cursor 4 & "\n"

hsClass :: SnippetCmd ()
hsClass = snippet $
<<<<<<< HEAD
  "class " & (cursor 1) & " " & (cursor 2) & " where\n  " & (cursor 3)

hsPragma :: SnippetCmd ()
hsPragma = snippet $ "{-# LANGUAGE " & cursor 1 & " #-}"

hsComment :: SnippetCmd ()
hsComment = snippet $ "{- " & cursor 1 & " -}"

hsData :: SnippetCmd ()
hsData = snippet $ "data " & cursor 1 & " = " & cursor 2

hsNewtype :: SnippetCmd ()
hsNewtype = snippet $ "newtype " & cursor 1 & " = " & cursor 2

hsType :: SnippetCmd ()
hsType = snippet $ "type " & cursor 1 & " = " & cursor 2

hsSection :: SnippetCmd ()
hsSection = snippet $ (replicate 80 '-' ++ "\n-- ") & cursor 1 & ("\n" ++ (replicate 80 '-'))

hsModule :: SnippetCmd ()
hsModule = snippet $ "module " & cursor 1 & " where" & cursor 2

hsInit :: SnippetCmd ()
hsInit = snippet $ 
          (replicate 80 '-' ++ "\n-- Module      : ") & cursor 1 & "\n-- Copyright   : " & cursor 2 & "\n-- License     : " & cursor 3 & "\n--\n-- Maintainer  : " & cursor 4 & "\n-- Stability   : " & cursor 5 & "\n-- Portability : " & cursor 6 & "\n--\n-- | " & cursor 7 & ("\n--\n" ++ (replicate 80 '-'))
=======
  "class " & cursor 1 & " " & cursor 2 & " where\n  " & cursor 3
>>>>>>> 5c7cf478c3751517b995ef88415322d815c4488a
