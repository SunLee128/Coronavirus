# Coronavirus Outbreak
This application is inspired by the current Coronavirus outbreak. Coronavirus is carried by human but also the number of infection can be decreased by vaccine.  

## Specifications
The world consists of an ​n​ x​ n​ grid on which ​**humans** live. There is also **Coronavirus** on the grid. Both of these occupy a single square on the grid and can be addressed using zero-indexed x-y coordinates. **Top left corner is ​(x: 0, y: 0)​** with x represent horizontal coordinate, y represent vertical coordinate. Any number of humans and virus may occupy the same grid square.  

At the beginning of the program Coronavirus begins to move around the grid. It is given an initial x-y coordinate and a list of movements, **up, down, left and right (​U​,​D​,​L​,​R​)**. 

The ordered sequence of movements is represented as a string, for example: ​DLUURR (down, left, up, up, right, right). **Coronavirus can move through the edge of the grid, appearing on the directly opposite side**. For a 10x10 grid, a Coronavirus moving left for (0,4) will move to (9,4); a Coronavirus moving down from (3,9) will move to (3,0). 

Humans also have an initial x-y coordinate. 

If Coronavirus moves so that it end up on the same location as a  human, the **human gets infected and Number of infection increases by one. Then Coronavirus starts to move with the infected human**. The first infected human continues moving and when it passes other human, it infects the others until it performed all its moves.

When infected humans finished the moves and if there is any human left that hasn't moved, they started perform the move in order in Input.txt. When a uninfected human end up on the same location as infected human, in gets infected and the Number of infection increases by one.

While the Coronavirus, infected humans, uninfected humans are moving in turns, there has been an effort to develop vaccine for the Coronavirus. It starts its move after Coronavirus and both infected and uninfected humans finished their moves. **The vaccine** starts its move at the intial x-y coordinate. The vaccines performs the same move as the Coronavirus and humans. When Vaccine end up on the same location as any infected or uninfected human, the human takes the vaccine and starts the same move as it did before. If the human was infected, then it becomes uninfected therefore **Coronavirus Count decreases by one.** Human with the vaccine passes the vaccine when it end up with the same location with another human. Whenever Vaccine cures a human, **Coronavirus Count decreases by one.**

Once all the humans have completed moving the program ends.

## Installation
Run `$ gem install bundler && bundle install`

## How to run
`ruby lib/corona_virus.rb` to run the application.
Input values can be updated in input.txt

- Example input
```
4 #dimensions of the area
(2,1) #initial position of the Coronavirus
(0,1)(1,2)(3,1) #a list of positions of humans
DLUURR #list of moves for Coronavirus, human and vaccine
(0,0) #position of Vaccine
```
- Example output
```
Number of infection:
Vaccine Location: 
Corona locations: (3,0),(2,1),(1,0),(0,0)
```
## Testing
To run test, type `rake spec` in terminal.