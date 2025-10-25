package com.google.android.gms.internal.auth;

import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class y0 {
    public static t0 a(t0 t0Var) {
        if (!(t0Var instanceof w0) && !(t0Var instanceof u0)) {
            if (t0Var instanceof Serializable) {
                return new u0(t0Var);
            }
            return new w0(t0Var);
        }
        return t0Var;
    }

    public static t0 b(Object obj) {
        return new x0(obj);
    }
}
