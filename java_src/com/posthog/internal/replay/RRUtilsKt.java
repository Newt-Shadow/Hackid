package com.posthog.internal.replay;

import eb.c;
import eb.f;
import eb.h;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.m;
import xc.q;
import yc.h0;
/* loaded from: classes.dex */
public final class RRUtilsKt {
    public static final void capture(List<? extends RREvent> list) {
        Map i10;
        m.e(list, "<this>");
        i10 = h0.i(q.a("$snapshot_data", list), q.a("$snapshot_source", "mobile"));
        h.a.a(c.A, f.SNAPSHOT.b(), null, i10, null, null, null, 58, null);
    }

    public static /* synthetic */ void capture$default(List list, h hVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            hVar = null;
        }
        capture(list, hVar);
    }

    public static final void capture(List<? extends RREvent> list, h hVar) {
        Map i10;
        m.e(list, "<this>");
        i10 = h0.i(q.a("$snapshot_data", list), q.a("$snapshot_source", "mobile"));
        if (hVar != null) {
            h.a.a(hVar, f.SNAPSHOT.b(), null, i10, null, null, null, 58, null);
        } else {
            capture(list);
        }
    }
}
