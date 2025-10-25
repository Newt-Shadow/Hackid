package com.google.android.gms.internal.play_billing;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public final class q1 {

    /* renamed from: b  reason: collision with root package name */
    private static volatile q1 f7095b;

    /* renamed from: c  reason: collision with root package name */
    static final q1 f7096c = new q1(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map f7097a = Collections.emptyMap();

    q1(boolean z10) {
    }

    public static q1 a() {
        q1 q1Var = f7095b;
        if (q1Var != null) {
            return q1Var;
        }
        synchronized (q1.class) {
            q1 q1Var2 = f7095b;
            if (q1Var2 != null) {
                return q1Var2;
            }
            q1 a10 = w1.a(q1.class);
            f7095b = a10;
            return a10;
        }
    }

    public final a2 b(f3 f3Var, int i10) {
        android.support.v4.media.session.b.a(this.f7097a.get(new p1(f3Var, i10)));
        return null;
    }
}
