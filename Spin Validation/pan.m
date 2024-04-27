#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC main */
	case 3: // STATE 1 - KMeansValidate.pml:79 - [printf('Clusters iniciales\\n')] (0:9:2 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("Clusters iniciales\n");
		/* merge: i = 0(9, 2, 9) */
		reached[1][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: i = 0(9, 3, 9) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 10, 9) */
		reached[1][10] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 4: // STATE 4 - KMeansValidate.pml:81 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((P1 *)_this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - KMeansValidate.pml:82 - [printf('%d, %d\\n',centroidX[i],centroidY[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		Printf("%d, %d\n", now.centroidX[ Index(((P1 *)_this)->i, 5) ], now.centroidY[ Index(((P1 *)_this)->i, 5) ]);
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 6 - KMeansValidate.pml:81 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 12 - KMeansValidate.pml:86 - [iter = 0] (0:73:2 - 3)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->iter;
		((P1 *)_this)->iter = 0;
#ifdef VAR_RANGES
		logval("main:iter", ((P1 *)_this)->iter);
#endif
		;
		/* merge: iter = 0(73, 13, 73) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->iter;
		((P1 *)_this)->iter = 0;
#ifdef VAR_RANGES
		logval("main:iter", ((P1 *)_this)->iter);
#endif
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 14 - KMeansValidate.pml:86 - [((iter<=(5-1)))] (22:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((P1 *)_this)->iter<=(5-1))))
			continue;
		/* merge: printf('Iteracion %d comenzada.\\n',(iter+1))(22, 15, 22) */
		reached[1][15] = 1;
		Printf("Iteracion %d comenzada.\n", (((P1 *)_this)->iter+1));
		/* merge: i = 0(22, 16, 22) */
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[1][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 17 - KMeansValidate.pml:89 - [((i<=(30-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)_this)->i<=(30-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 18 - KMeansValidate.pml:91 - [(run UpdateLabel(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)_this)->i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 19 - KMeansValidate.pml:89 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 25 - KMeansValidate.pml:94 - [((count<1))] (36:0:2 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((now.count<1)))
			continue;
		/* merge: count = 30(36, 26, 36) */
		reached[1][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.count;
		now.count = 30;
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		/* merge: i = 0(36, 28, 36) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[1][37] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 29 - KMeansValidate.pml:97 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!((((P1 *)_this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 30 - KMeansValidate.pml:98 - [centroidX[i] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = now.centroidX[ Index(((P1 *)_this)->i, 5) ];
		now.centroidX[ Index(((P1 *)_this)->i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("centroidX[main:i]", now.centroidX[ Index(((P1 *)_this)->i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 31 - KMeansValidate.pml:99 - [centroidY[i] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = now.centroidY[ Index(((P1 *)_this)->i, 5) ];
		now.centroidY[ Index(((P1 *)_this)->i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("centroidY[main:i]", now.centroidY[ Index(((P1 *)_this)->i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 32 - KMeansValidate.pml:100 - [clusterPoints[i] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = now.clusterPoints[ Index(((P1 *)_this)->i, 5) ];
		now.clusterPoints[ Index(((P1 *)_this)->i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("clusterPoints[main:i]", now.clusterPoints[ Index(((P1 *)_this)->i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 33 - KMeansValidate.pml:97 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 39 - KMeansValidate.pml:103 - [i = 0] (0:48:1 - 3)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 49, 48) */
		reached[1][49] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 40 - KMeansValidate.pml:103 - [((i<=(30-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!((((P1 *)_this)->i<=(30-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 41 - KMeansValidate.pml:105 - [a = labels[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_6_4_4_a;
		((P1 *)_this)->_6_4_4_a = now.labels[ Index(((P1 *)_this)->i, 30) ];
#ifdef VAR_RANGES
		logval("main:a", ((P1 *)_this)->_6_4_4_a);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 42 - KMeansValidate.pml:105 - [clusterPoints[a] = (clusterPoints[a]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = now.clusterPoints[ Index(((P1 *)_this)->_6_4_4_a, 5) ];
		now.clusterPoints[ Index(((P1 *)_this)->_6_4_4_a, 5) ] = (now.clusterPoints[ Index(((P1 *)_this)->_6_4_4_a, 5) ]+1);
#ifdef VAR_RANGES
		logval("clusterPoints[main:a]", now.clusterPoints[ Index(((P1 *)_this)->_6_4_4_a, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 43 - KMeansValidate.pml:106 - [centroidX[a] = (centroidX[a]+dataX[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = now.centroidX[ Index(((P1 *)_this)->_6_4_4_a, 5) ];
		now.centroidX[ Index(((P1 *)_this)->_6_4_4_a, 5) ] = (now.centroidX[ Index(((P1 *)_this)->_6_4_4_a, 5) ]+now.dataX[ Index(((P1 *)_this)->i, 30) ]);
#ifdef VAR_RANGES
		logval("centroidX[main:a]", now.centroidX[ Index(((P1 *)_this)->_6_4_4_a, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 44 - KMeansValidate.pml:107 - [centroidY[a] = (centroidY[a]+dataY[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = now.centroidY[ Index(((P1 *)_this)->_6_4_4_a, 5) ];
		now.centroidY[ Index(((P1 *)_this)->_6_4_4_a, 5) ] = (now.centroidY[ Index(((P1 *)_this)->_6_4_4_a, 5) ]+now.dataY[ Index(((P1 *)_this)->i, 30) ]);
#ifdef VAR_RANGES
		logval("centroidY[main:a]", now.centroidY[ Index(((P1 *)_this)->_6_4_4_a, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 45 - KMeansValidate.pml:103 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 51 - KMeansValidate.pml:110 - [i = 0] (0:58:1 - 3)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 59, 58) */
		reached[1][59] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 26: // STATE 52 - KMeansValidate.pml:110 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((((P1 *)_this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 53 - KMeansValidate.pml:111 - [centroidX[i] = (centroidX[i]/clusterPoints[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = now.centroidX[ Index(((P1 *)_this)->i, 5) ];
		now.centroidX[ Index(((P1 *)_this)->i, 5) ] = (now.centroidX[ Index(((P1 *)_this)->i, 5) ]/now.clusterPoints[ Index(((P1 *)_this)->i, 5) ]);
#ifdef VAR_RANGES
		logval("centroidX[main:i]", now.centroidX[ Index(((P1 *)_this)->i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 54 - KMeansValidate.pml:112 - [centroidY[i] = (centroidY[i]/clusterPoints[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = now.centroidY[ Index(((P1 *)_this)->i, 5) ];
		now.centroidY[ Index(((P1 *)_this)->i, 5) ] = (now.centroidY[ Index(((P1 *)_this)->i, 5) ]/now.clusterPoints[ Index(((P1 *)_this)->i, 5) ]);
#ifdef VAR_RANGES
		logval("centroidY[main:i]", now.centroidY[ Index(((P1 *)_this)->i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 55 - KMeansValidate.pml:110 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 61 - KMeansValidate.pml:115 - [i = 0] (0:67:1 - 3)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[1][68] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 31: // STATE 62 - KMeansValidate.pml:115 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!((((P1 *)_this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 63 - KMeansValidate.pml:116 - [printf('%d, %d\\n',centroidX[i],centroidY[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		Printf("%d, %d\n", now.centroidX[ Index(((P1 *)_this)->i, 5) ], now.centroidY[ Index(((P1 *)_this)->i, 5) ]);
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 64 - KMeansValidate.pml:115 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 70 - KMeansValidate.pml:86 - [iter = (iter+1)] (0:73:1 - 3)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->iter;
		((P1 *)_this)->iter = (((P1 *)_this)->iter+1);
#ifdef VAR_RANGES
		logval("main:iter", ((P1 *)_this)->iter);
#endif
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 35: // STATE 76 - KMeansValidate.pml:120 - [printf('\\nEntrenamiento terminado.\\n')] (0:83:1 - 3)
		IfNotBlocked
		reached[1][76] = 1;
		Printf("\nEntrenamiento terminado.\n");
		/* merge: i = 0(83, 77, 83) */
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 84, 83) */
		reached[1][84] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 78 - KMeansValidate.pml:122 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((((P1 *)_this)->i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 79 - KMeansValidate.pml:123 - [printf('%d, %d\\n',centroidX[i],centroidY[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		Printf("%d, %d\n", now.centroidX[ Index(((P1 *)_this)->i, 5) ], now.centroidY[ Index(((P1 *)_this)->i, 5) ]);
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 80 - KMeansValidate.pml:122 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 86 - KMeansValidate.pml:125 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][86] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC UpdateLabel */
	case 40: // STATE 1 - KMeansValidate.pml:36 - [((mutex>0))] (4:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.mutex)>0)))
			continue;
		/* merge: mutex = (mutex-1)(0, 2, 4) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 4 - KMeansValidate.pml:37 - [cc = (cc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)cc);
		cc = (((int)cc)+1);
#ifdef VAR_RANGES
		logval("cc", ((int)cc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 5 - KMeansValidate.pml:39 - [j = 0] (0:33:2 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->j;
		((P0 *)_this)->j = 0;
#ifdef VAR_RANGES
		logval("UpdateLabel:j", ((P0 *)_this)->j);
#endif
		;
		/* merge: j = 0(33, 6, 33) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->j;
		((P0 *)_this)->j = 0;
#ifdef VAR_RANGES
		logval("UpdateLabel:j", ((P0 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 34, 33) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 7 - KMeansValidate.pml:39 - [((j<=(5-1)))] (14:0:2 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((P0 *)_this)->j<=(5-1))))
			continue;
		/* merge: dist = 0(14, 8, 14) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_5_2_dist;
		((P0 *)_this)->_5_2_dist = 0;
#ifdef VAR_RANGES
		logval("UpdateLabel:dist", ((P0 *)_this)->_5_2_dist);
#endif
		;
		/* merge: distX = 0(14, 9, 14) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_5_2_distX;
		((P0 *)_this)->_5_2_distX = 0;
#ifdef VAR_RANGES
		logval("UpdateLabel:distX", ((P0 *)_this)->_5_2_distX);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 44: // STATE 10 - KMeansValidate.pml:48 - [((centroidX[j]>dataX[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.centroidX[ Index(((P0 *)_this)->j, 5) ]>now.dataX[ Index(((P0 *)_this)->i, 30) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 11 - KMeansValidate.pml:49 - [distX = (centroidX[j]-dataX[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_2_distX;
		((P0 *)_this)->_5_2_distX = (now.centroidX[ Index(((P0 *)_this)->j, 5) ]-now.dataX[ Index(((P0 *)_this)->i, 30) ]);
#ifdef VAR_RANGES
		logval("UpdateLabel:distX", ((P0 *)_this)->_5_2_distX);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 13 - KMeansValidate.pml:51 - [distX = (dataX[i]-centroidX[j])] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_2_distX;
		((P0 *)_this)->_5_2_distX = (now.dataX[ Index(((P0 *)_this)->i, 30) ]-now.centroidX[ Index(((P0 *)_this)->j, 5) ]);
#ifdef VAR_RANGES
		logval("UpdateLabel:distX", ((P0 *)_this)->_5_2_distX);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 16 - KMeansValidate.pml:56 - [distY = 0] (0:21:1 - 3)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_2_distY;
		((P0 *)_this)->_5_2_distY = 0;
#ifdef VAR_RANGES
		logval("UpdateLabel:distY", ((P0 *)_this)->_5_2_distY);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 17 - KMeansValidate.pml:57 - [((centroidY[j]>dataY[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((now.centroidY[ Index(((P0 *)_this)->j, 5) ]>now.dataY[ Index(((P0 *)_this)->i, 30) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 18 - KMeansValidate.pml:58 - [distY = (centroidY[j]-dataY[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_2_distY;
		((P0 *)_this)->_5_2_distY = (now.centroidY[ Index(((P0 *)_this)->j, 5) ]-now.dataY[ Index(((P0 *)_this)->i, 30) ]);
#ifdef VAR_RANGES
		logval("UpdateLabel:distY", ((P0 *)_this)->_5_2_distY);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 20 - KMeansValidate.pml:60 - [distY = (dataY[i]-centroidY[j])] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_2_distY;
		((P0 *)_this)->_5_2_distY = (now.dataY[ Index(((P0 *)_this)->i, 30) ]-now.centroidY[ Index(((P0 *)_this)->j, 5) ]);
#ifdef VAR_RANGES
		logval("UpdateLabel:distY", ((P0 *)_this)->_5_2_distY);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 23 - KMeansValidate.pml:63 - [dist = (distX+distY)] (0:28:1 - 3)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_5_2_dist;
		((P0 *)_this)->_5_2_dist = (((P0 *)_this)->_5_2_distX+((P0 *)_this)->_5_2_distY);
#ifdef VAR_RANGES
		logval("UpdateLabel:dist", ((P0 *)_this)->_5_2_dist);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 24 - KMeansValidate.pml:66 - [((dist<minDist))] (33:0:4 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((P0 *)_this)->_5_2_dist<((P0 *)_this)->minDist)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: minDist */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->minDist;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->minDist = 0;
		/* merge: minDist = dist(33, 25, 33) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->minDist;
		((P0 *)_this)->minDist = ((P0 *)_this)->_5_2_dist;
#ifdef VAR_RANGES
		logval("UpdateLabel:minDist", ((P0 *)_this)->minDist);
#endif
		;
		/* merge: minIdx = j(33, 26, 33) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->minIdx;
		((P0 *)_this)->minIdx = ((P0 *)_this)->j;
#ifdef VAR_RANGES
		logval("UpdateLabel:minIdx", ((P0 *)_this)->minIdx);
#endif
		;
		/* merge: .(goto)(33, 29, 33) */
		reached[0][29] = 1;
		;
		/* merge: j = (j+1)(33, 30, 33) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->j;
		((P0 *)_this)->j = (((P0 *)_this)->j+1);
#ifdef VAR_RANGES
		logval("UpdateLabel:j", ((P0 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 34, 33) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 53: // STATE 30 - KMeansValidate.pml:39 - [j = (j+1)] (0:33:1 - 3)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->j;
		((P0 *)_this)->j = (((P0 *)_this)->j+1);
#ifdef VAR_RANGES
		logval("UpdateLabel:j", ((P0 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 34, 33) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 54: // STATE 36 - KMeansValidate.pml:72 - [labels[i] = minIdx] (0:0:1 - 3)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = now.labels[ Index(((P0 *)_this)->i, 30) ];
		now.labels[ Index(((P0 *)_this)->i, 30) ] = ((P0 *)_this)->minIdx;
#ifdef VAR_RANGES
		logval("labels[UpdateLabel:i]", now.labels[ Index(((P0 *)_this)->i, 30) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 37 - KMeansValidate.pml:73 - [count = (count-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.count;
		now.count = (now.count-1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 38 - KMeansValidate.pml:74 - [cc = (cc-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((int)cc);
		cc = (((int)cc)-1);
#ifdef VAR_RANGES
		logval("cc", ((int)cc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 39 - KMeansValidate.pml:75 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 40 - KMeansValidate.pml:76 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

