# this file creates the dodecahedron group isomorphic to A_5.  See
# file "full_dodecahedron_group.py" for the *full* dodecahedron group,
# *not* isomorphic to S_5, which includes reflections.


# This file creates sage code (GAP code, I guess) to generate the
# group of permutations of the dodecahedeon.  This is isomorphic to
# A_5 (the alternating group on 5 elements) and thus has size 60.  The
# difficult bit is to identify the elements of the ground set with
# actual identifiable edges on megaminx_net.pdf model.

# It is possible to generate the dodecahedron group from two elements,
# and I am going to do this two ways: one for faces and one for edges.
# Cayley's theorem says that the group for edges is a subgroup of S_30
# (as there are 30 edges) and the group for faces is a subgroup of
# S_12 (as there are 12 faces).

# The faces are numbered by the large-font number in the middle of each
# pentagon; the edges are numbered by the *smaller* of the two numbers
# on the edge piece.

# to do face1 or edge1, put the model (that is, the model created by
# printing out megaminx_net.pdf) down on the desk with face 1
# uppermost.  Look at a position then rotate the model 72 dgrees
# anticlockwise (sic) and note which face appears there.

# To do face2 or edge2, put your finger on vertex common to
# face1,face2,face3 [==v1/2/3] and balance it on the desk with
# v10/11/12 on the desk.  The model can swivel.  Rotate it 120 degrees
# anticlockwise about the axis joining v1/2/3 with v10/11/12.

# following give the permutation group for a dodecahedron's *faces*
# objects 'face1' and 'face2' are generators for the group, called
# 'dod_face', which should be isomorphic to A_5.


face1 = PermutationGroupElement([(2,3,4,5,6),(7,11,10,9,8)])  # rotate 72 degrees about face 1
face2 = PermutationGroupElement([(3,1,2),(6,8,4),(9,7,5),(10,12,11)]) # rotate 120 degrees about corner of faces 1/2/3
dod_face  = PermutationGroup([face1,face2])

dod_face.is_isomporphic(AlternatingGroup(5))   #should  be 'True'.

# following give the permutation group for a dodecahedron's *edges*
# NB: an edge is described as the smaller of the two facet numbers on
# that edge


edge1 = PermutationGroupElement([
    (10, 12, 14, 16, 18),
    (20, 32, 44, 56, 24),
    (26, 38, 40, 52, 64),
    (28, 30, 42, 54, 66),
    (72, 76,108, 96, 84),
    (74,112,100, 98, 86)])  # rotate 72 degrees about face 1


edge2 = PermutationGroupElement([
    (16,20,18),
    (10,24,38),
    (14,28,32),
    (12,26,30),
    (40,56,84),
    (44,66,72),
    (42,64,86),
    (52,96,74),
    (54,98,76),
    (100,112,108)])  #rotate 120 degrees about face1/2/3-face10/11/12
        

dod_edge  = PermutationGroup([edge1,edge2])

dod_edge.is_isomorphic(AlternatingGroup(5))  # should be TRUE

dod_edge.is_isomorphic(dod_face)  # should be TRUE as well!


actual_edges = (10, 12, 14, 16, 18, 20, 24, 26, 28, 30, 32, 38, 40, 42, 44, 52, 54, 56, 64, 66, 72, 74, 76, 84, 86, 96, 98, 100, 108, 112)
