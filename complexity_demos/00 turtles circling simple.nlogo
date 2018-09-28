;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Original Code provided by Uri Wilensky;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;further modified and heavily commented by 深度碎片;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

turtles-own [speed]  ;; make a property for all turtles



to setup  ;; to setup the universe

  setup-circle  ;; setup a circle to begin with

  reset-ticks  ;; put clock back to 0

end

to setup-circle  ;; how to setup a cicle at the beginning

  clear-all  ;; wipe out the whole universe

  set-default-shape turtles "arrow"  ;; give each turtle a default shape of "arrow", even though no turtles created at this moment

  ;; all turtles are born at the same original spot
  create-ordered-turtles 40 [  ;; create 40 turtles, ordered: they are evenly spaced around the circle
;  create-turtles 40 [  ;; create 40 turtles, but not evenly spaced

    set size 2  ;; (easier to see) set the size of each turtle

    set speed .35  ;; (this is the size of each step the turtles take in a tick) set the speed of all turtles


    fd 20  ;; turtles move forward 20 to form the perimeter of circle

    rt 90  ;; turtles turn right for 90 degree to face tangent to the circle

  ]
end

to go  ;; how each turtle behave in iteration

  ;; all turtles indepedently behave in the same way forward the same amount and turn right the same 1 degree
  ask turtles [set speed velocity fd speed rt degree ]  ;; there is no interaction between turtles
;  set speed velocity

  ;; track a single turtle: enlarge it and make it pen-down
  if track-turtle? [ ask one-of turtles [set size 4 pen-down]

                     set track-turtle? false]  ;; make sure tracking turtle does not iterate

  tick  ;; count the number of iterations

end






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Thinking process ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


to problem

;  only design individual turtle's simple action (move forward or backward, turn right or left)
;
;  produce visually surprising emergence phenomena of all turtles as a whole

end


; Copyright 1997 Uri Wilensky.
; See Info tab for full copyright and license.
