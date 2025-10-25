package androidx.core.app;

import android.content.res.Configuration;
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f2005a;

    /* renamed from: b  reason: collision with root package name */
    private Configuration f2006b;

    public u(boolean z10) {
        this.f2005a = z10;
    }

    public final boolean a() {
        return this.f2005a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(boolean z10, Configuration newConfig) {
        this(z10);
        kotlin.jvm.internal.m.e(newConfig, "newConfig");
        this.f2006b = newConfig;
    }
}
