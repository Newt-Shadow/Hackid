package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
public final class o3 extends RuntimeException {
    public o3(y2 y2Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final g2 a() {
        return new g2(getMessage());
    }
}
