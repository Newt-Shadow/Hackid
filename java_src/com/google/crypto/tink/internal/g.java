package com.google.crypto.tink.internal;

import c7.b;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: b  reason: collision with root package name */
    private static final g f8357b = new g();

    /* renamed from: c  reason: collision with root package name */
    private static final b f8358c = new b();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f8359a = new AtomicReference();

    /* loaded from: classes.dex */
    private static class b implements c7.b {
        private b() {
        }

        @Override // c7.b
        public b.a a(c7.c cVar, String str, String str2) {
            return f.f8355a;
        }
    }

    public static g b() {
        return f8357b;
    }

    public c7.b a() {
        c7.b bVar = (c7.b) this.f8359a.get();
        if (bVar == null) {
            return f8358c;
        }
        return bVar;
    }
}
