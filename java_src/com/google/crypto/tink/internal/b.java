package com.google.crypto.tink.internal;

import s6.y;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private final g7.a f8340a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f8341b;

    /* loaded from: classes.dex */
    class a extends b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ InterfaceC0101b f8342c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g7.a aVar, Class cls, InterfaceC0101b interfaceC0101b) {
            super(aVar, cls, null);
            this.f8342c = interfaceC0101b;
        }

        @Override // com.google.crypto.tink.internal.b
        public s6.g d(q qVar, y yVar) {
            return this.f8342c.a(qVar, yVar);
        }
    }

    /* renamed from: com.google.crypto.tink.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0101b {
        s6.g a(q qVar, y yVar);
    }

    /* synthetic */ b(g7.a aVar, Class cls, a aVar2) {
        this(aVar, cls);
    }

    public static b a(InterfaceC0101b interfaceC0101b, g7.a aVar, Class cls) {
        return new a(aVar, cls, interfaceC0101b);
    }

    public final g7.a b() {
        return this.f8340a;
    }

    public final Class c() {
        return this.f8341b;
    }

    public abstract s6.g d(q qVar, y yVar);

    private b(g7.a aVar, Class cls) {
        this.f8340a = aVar;
        this.f8341b = cls;
    }
}
