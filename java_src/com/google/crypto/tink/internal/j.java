package com.google.crypto.tink.internal;
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private final g7.a f8364a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f8365b;

    /* loaded from: classes.dex */
    class a extends j {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f8366c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g7.a aVar, Class cls, b bVar) {
            super(aVar, cls, null);
            this.f8366c = bVar;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* synthetic */ j(g7.a aVar, Class cls, a aVar2) {
        this(aVar, cls);
    }

    public static j a(b bVar, g7.a aVar, Class cls) {
        return new a(aVar, cls, bVar);
    }

    public final g7.a b() {
        return this.f8364a;
    }

    public final Class c() {
        return this.f8365b;
    }

    private j(g7.a aVar, Class cls) {
        this.f8364a = aVar;
        this.f8365b = cls;
    }
}
