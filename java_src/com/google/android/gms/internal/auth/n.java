package com.google.android.gms.internal.auth;

import android.content.Context;
/* loaded from: classes.dex */
final class n extends k0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6118a;

    /* renamed from: b  reason: collision with root package name */
    private final t0 f6119b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Context context, t0 t0Var) {
        this.f6118a = context;
        this.f6119b = t0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.k0
    public final Context a() {
        return this.f6118a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.k0
    public final t0 b() {
        return this.f6119b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k0) {
            k0 k0Var = (k0) obj;
            if (this.f6118a.equals(k0Var.a()) && this.f6119b.equals(k0Var.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f6118a.hashCode() ^ 1000003) * 1000003) ^ this.f6119b.hashCode();
    }

    public final String toString() {
        String obj = this.f6118a.toString();
        String obj2 = this.f6119b.toString();
        return "FlagsContext{context=" + obj + ", hermeticFileOverrides=" + obj2 + "}";
    }
}
