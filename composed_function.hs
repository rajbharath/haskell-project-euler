-- notNull = not . null
-- only one argument for composed functions
stringLength num = (length . show) num
notNull n = (not . null) n
