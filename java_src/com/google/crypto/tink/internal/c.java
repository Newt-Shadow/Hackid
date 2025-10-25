package com.google.crypto.tink.internal;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private final Class f8343a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f8344b;

    /* loaded from: classes.dex */
    class a extends c {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f8345c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Class cls, Class cls2, b bVar) {
            super(cls, cls2, null);
            this.f8345c = bVar;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* synthetic */ c(Class cls, Class cls2, a aVar) {
        this(cls, cls2);
    }

    public static c a(b bVar, Class cls, Class cls2) {
        return new a(cls, cls2, bVar);
    }

    public Class b() {
        return this.f8343a;
    }

    public Class c() {
        return this.f8344b;
    }

    private c(Class cls, Class cls2) {
        this.f8343a = cls;
        this.f8344b = cls2;
    }
}
