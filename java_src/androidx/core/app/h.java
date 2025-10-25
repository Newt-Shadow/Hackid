package androidx.core.app;

import android.content.res.Configuration;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f1877a;

    /* renamed from: b  reason: collision with root package name */
    private Configuration f1878b;

    public h(boolean z10) {
        this.f1877a = z10;
    }

    public final boolean a() {
        return this.f1877a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(boolean z10, Configuration newConfig) {
        this(z10);
        kotlin.jvm.internal.m.e(newConfig, "newConfig");
        this.f1878b = newConfig;
    }
}
