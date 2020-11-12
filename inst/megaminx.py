# This file is not intended to be human-readable; it is readable by sage.  It is created by executing 'code.R'
c01 = PermutationGroupElement([(11,13,15,17,19),(21,33,45,57,69),(23,35,47,59,61)])
c02 = PermutationGroupElement([(21,23,25,27,29),(15,67,91,81,35),(17,69,93,83,37)])
c03 = PermutationGroupElement([(31,33,35,37,39),(17,29,89,79,47),(19,21,81,71,49)])
c04 = PermutationGroupElement([(41,43,45,47,49),(11,33,79,119,51),(19,31,77,117,59)])
c05 = PermutationGroupElement([(51,53,55,57,59),(11,43,115,105,61),(13,45,117,107,63)])
c06 = PermutationGroupElement([(61,63,65,67,69),(13,55,103,93,23),(15,57,105,95,25)])
c07 = PermutationGroupElement([(71,73,75,77,79),(31,89,121,111,41),(39,87,129,119,49)])
c08 = PermutationGroupElement([(81,83,85,87,89),(27,99,121,71,37),(29,91,123,73,39)])
c09 = PermutationGroupElement([(91,93,95,97,99),(25,65,101,123,83),(27,67,103,125,85)])
c10 = PermutationGroupElement([(101,103,105,107,109),(53,113,125,95,63),(55,115,127,97,65)])
c11 = PermutationGroupElement([(111,113,115,117,119),(41,75,127,107,51),(43,77,129,109,53)])
c12 = PermutationGroupElement([(121,123,125,127,129),(73,85,97,109,111),(75,87,99,101,113)])

a01 = c01.inverse()
a02 = c02.inverse()
a03 = c03.inverse()
a04 = c04.inverse()
a05 = c05.inverse()
a06 = c06.inverse()
a07 = c07.inverse()
a08 = c08.inverse()
a09 = c09.inverse()
a10 = c10.inverse()
a11 = c11.inverse()
a12 = c12.inverse()

megaminx = PermutationGroup([c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12])
superflip = megaminx.center().gens()[0]
big = c01*c02*c03*c04*c05*c06*c07*c08*c09*c10*c11*c12
(a06*a09*c04*c07)*(c01*a02*c01*c02^2*a03^2)^6*(a07*a04*c09*c06)*(a12^2*c09*a07*a11*a10)^9
