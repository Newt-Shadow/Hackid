package com.google.crypto.tink.internal;
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    private final Class f8370a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f8371b;

    /* loaded from: classes.dex */
    class a extends l {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f8372c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Class cls, Class cls2, b bVar) {
            super(cls, cls2, null);
            this.f8372c = bVar;
        }

        @Override // com.google.crypto.tink.internal.l
        public Object a(s6.g gVar) {
            return this.f8372c.a(gVar);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        Object a(s6.g gVar);
    }

    /* synthetic */ l(Class cls, Class cls2, a aVar) {
        this(cls, cls2);
    }

    public static l b(b bVar, Class cls, Class cls2) {
        return new a(cls, cls2, bVar);
    }

    public abstract Object a(s6.g gVar);

    public Class c() {
        return this.f8370a;
    }

    public Class d() {
        return this.f8371b;
    }

    private l(Class cls, Class cls2) {
        this.f8370a = cls;
        this.f8371b = cls2;
    }
}
