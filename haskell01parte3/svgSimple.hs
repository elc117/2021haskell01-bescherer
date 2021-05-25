import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 60 100 50 "rgb(72, 61, 139, 1)") ++ 
  (svgCircle 20 300 20 "rgb(0, 255, 255, 1)") ++
  (svgCircle 440 250 60 "rgb(255, 255, 0, 1)") ++ 
  (svgCircle 250 330 40 "rgb(255, 20, 147, 1)") ++ 
  (svgCircle 120 250 70 "rgb(127, 255, 0, 1)") ++  
  (svgCircle 400 400 25 "rgb(72, 61, 139, 1)") ++ 
  (svgCircle 300 60 50 "rgb(0, 255, 255, 1)") ++
  (svgCircle 60 460 40 "rgb(255, 255, 0, 1)") ++ 
  (svgCircle 450 20 30 "rgb(127, 255, 0, 1)") ++ 
  (svgCircle 300 200 15 "rgb(72, 61, 139, 1)") ++ 
  (svgCircle 240 450 20 "rgb(0, 255, 255, 1)") ++
  (svgCircle 100 20 15 "rgb(255, 255, 0, 1)") ++ 
  (svgCircle 150 150 20 "rgb(255, 20, 147, 1)") ++ 
  (svgCircle 450 450 20 "rgb(127, 255, 0, 1)") ++  
  svgEnd
 
main :: IO ()
main = do
  writeFile "circles.svg" svgAll
