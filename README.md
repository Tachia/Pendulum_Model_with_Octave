[Pendulum_modelling.pdf](https://github.com/Tachia/Pendulum_Model_with_Octave/files/14729675/Pendulum_modelling.pdf)

## MATHEMATICAL MODELLING OF A PENDULUM WITH SHORT, LARGE AND EXTRA LARGE TIME PERIODS
## OCTAVE SCRIPTING}

# Principle of Mathematical Modelling
This scripts models the behavior of a pendulum with a short period, long period, and extra large period of time respectively demonstrating how their models differs in the way they oscillate.

The behavior of a pendulum with short, long, and extra long time periods differs in the way they oscillate. A pendulum with a short period will have a higher frequency of oscillation, meaning it swings back and forth more frequently within a given time frame. On the other hand, a pendulum with a long, and extra longer time periods will have lower frequencies of oscillation, meaning it takes longer to complete each swing. This is more pronounce for the case of extra large time period.

# Pendulum with Short Period of Time

The Model for a Pendulum with Short Period of Time is given by the following mathematical expression:

$\frac{d^2\phi}{dt^2} + \omega^2\phi = 0$

Where: $\phi$ is the angle formed by the pendulum thread or rope, 
This second order differential equation is the solved numerically using Octave Scripting, a open source software.

# Pendulum with Large Period of Time

The Model for a Pendulum with Large Period of Time is given by the following mathematical expression:

$\frac{d^2\phi}{dt^2} + \omega^2sin(\phi) = 0$

# Pendulum with Extra Large Period of Time

The Model for a Pendulum with Extra Large Period of Time is given by the following mathematical expression:

$\frac{d^2\phi}{dt^2} + \mu sgn \frac{d\phi}{dt} + \omega^2sin(\phi) = 0$

# The terms in the mathematical expressions:
$\phi$: This is the angle in radian
$\frac{d^2\phi}{dt^2}$: Is the second derivative of the variable $\phi$ with respect to time $t$. It represents the rate of change of $\phi$'s rate of change.
$\mu$: Represents the damping constant
$\mu sgn \frac{d\phi}{dt}$: This term represents a force acting on the pendulum. It is proportional to the sign (positive or negative) of the first derivative of $\phi$ with respect to time $t$. The force is multiplied by a constant $\mu$.
$\omega^2sin(\phi)$: It represents the restoring force of the pendulum and it is proportional to the angular frequency $\omega$ squared, multiplied by the sine of the angle $\phi$.
Overall, the differential equations describes how the angle $\phi$ and its rate of change over time $t$ represents the equation of motion for the pendulum.
