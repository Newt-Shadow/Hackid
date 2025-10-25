package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class u3 extends RuntimeException {
    public u3(f3 f3Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final l2 a() {
        return new l2(getMessage());
    }
}
