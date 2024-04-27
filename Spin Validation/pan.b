	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC main */

	case 3: // STATE 3
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		((P1 *)_this)->i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 6: // STATE 6
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 13
		;
		((P1 *)_this)->iter = trpt->bup.ovals[1];
		((P1 *)_this)->iter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 8: // STATE 16
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 10: // STATE 18
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 19
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 28
		;
		((P1 *)_this)->i = trpt->bup.ovals[1];
		now.count = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 14: // STATE 30
		;
		now.centroidX[ Index(((P1 *)_this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 31
		;
		now.centroidY[ Index(((P1 *)_this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 32
		;
		now.clusterPoints[ Index(((P1 *)_this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 33
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 39
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 41
		;
		((P1 *)_this)->_6_4_4_a = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 42
		;
		now.clusterPoints[ Index(((P1 *)_this)->_6_4_4_a, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 43
		;
		now.centroidX[ Index(((P1 *)_this)->_6_4_4_a, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 44
		;
		now.centroidY[ Index(((P1 *)_this)->_6_4_4_a, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 45
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 51
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 53
		;
		now.centroidX[ Index(((P1 *)_this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 54
		;
		now.centroidY[ Index(((P1 *)_this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 55
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 61
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 33: // STATE 64
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 70
		;
		((P1 *)_this)->iter = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 77
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 38: // STATE 80
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 86
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC UpdateLabel */

	case 40: // STATE 2
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 4
		;
		cc = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 6
		;
		((P0 *)_this)->j = trpt->bup.ovals[1];
		((P0 *)_this)->j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 9
		;
		((P0 *)_this)->_5_2_distX = trpt->bup.ovals[1];
		((P0 *)_this)->_5_2_dist = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 45: // STATE 11
		;
		((P0 *)_this)->_5_2_distX = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 13
		;
		((P0 *)_this)->_5_2_distX = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 16
		;
		((P0 *)_this)->_5_2_distY = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 49: // STATE 18
		;
		((P0 *)_this)->_5_2_distY = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 20
		;
		((P0 *)_this)->_5_2_distY = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 23
		;
		((P0 *)_this)->_5_2_dist = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 30
		;
		((P0 *)_this)->j = trpt->bup.ovals[3];
		((P0 *)_this)->minIdx = trpt->bup.ovals[2];
		((P0 *)_this)->minDist = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->minDist = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 53: // STATE 30
		;
		((P0 *)_this)->j = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 36
		;
		now.labels[ Index(((P0 *)_this)->i, 30) ] = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 37
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 38
		;
		cc = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 39
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 40
		;
		p_restor(II);
		;
		;
		goto R999;
	}

