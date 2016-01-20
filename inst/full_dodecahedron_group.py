# this file creates the *full* dodecahedron group (NB: although this
# has 120 elements, it is *not* isomorphic to S_5).  See file
# "dodecahedron_group.py" for the special dodecahedron group,
# isomorphic to A_5, which does not include reflections.

# There is more documentation in file "dodecahedron_group.py" than
# here, as this file is basically that file plus another generator
# (which is a reflection).

face1 = PermutationGroupElement([(2,3,4,5,6),(7,11,10,9,8)])  # rotate 72 degrees about face 1
face2 = PermutationGroupElement([(3,1,2),(6,8,4),(9,7,5),(10,12,11)]) # rotate 120 degrees about corner of faces 1/2/3
face_reflect = PermutationGroupElement([(3,6),(4,5),(8,9),(7,10)]) # reflect about plane defined by faces 1-2-12-11

full_dod_face  = PermutationGroup([face1,face2,face_reflect])

full_dod_face.is_isomorphic(SymmetricGroup(5))   #should  be 'False'

# following give the permutation group for a dodecahedron's *edges*
# NB: an edge is described as the smaller of the two facet numbers on
# that edge.  See dodecahedron_group.py for details.


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
        
edge_reflect = PermutationGroupElement([  # put model with face 1 uppermost, edge 16 towards you; reflection is left-right about a vertical plane.
    (10,  12),
    (14,  18),
    (20,  24),
    (26,  28),
    (30,  64),
    (32,  56),
    (38,  66),
    (40,  54),
    (42,  52),
    (72,  96),
    (74, 100),
    (76, 108),
    (86,  98)    
])
    

full_dod_edge  = PermutationGroup([edge1,edge2,edge_reflect])

full_dod_edge.is_isomorphic(SymmetricGroup(5))  # should be FALSE
full_dod_edge.is_isomorphic(full_dod_face)      # Should be TRUE


actual_edges=(10,12,14,16,18,20,24,26,28,30,32,38,40,42,44,52,54,56,64,66,72,74,76,84,86,96,98,100,108,112)
