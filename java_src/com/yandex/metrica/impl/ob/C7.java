package com.yandex.metrica.impl.ob;

import android.os.Process;
/* loaded from: classes2.dex */
class C7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f9833a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f9834b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f9835c;

    /* renamed from: d  reason: collision with root package name */
    public final C0776p7 f9836d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C7(String str, boolean z10, C0776p7 c0776p7) {
        this(str, z10, c0776p7, A2.a(23) && Process.is64Bit());
    }

    C7(String str, boolean z10, C0776p7 c0776p7, boolean z11) {
        this.f9833a = str;
        this.f9835c = z10;
        this.f9836d = c0776p7;
        this.f9834b = z11;
    }
}
