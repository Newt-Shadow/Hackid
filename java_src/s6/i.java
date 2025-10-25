package s6;

import com.google.crypto.tink.internal.d;
import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.o0;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
class i implements h {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.crypto.tink.internal.d f29416a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f29417b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final d.a f29418a;

        a(d.a aVar) {
            this.f29418a = aVar;
        }

        private o0 b(o0 o0Var) {
            this.f29418a.e(o0Var);
            return this.f29418a.a(o0Var);
        }

        o0 a(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return b(this.f29418a.d(hVar));
        }
    }

    public i(com.google.crypto.tink.internal.d dVar, Class cls) {
        if (!dVar.i().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", dVar.toString(), cls.getName()));
        }
        this.f29416a = dVar;
        this.f29417b = cls;
    }

    private a e() {
        return new a(this.f29416a.f());
    }

    private Object f(o0 o0Var) {
        if (!Void.class.equals(this.f29417b)) {
            this.f29416a.j(o0Var);
            return this.f29416a.e(o0Var, this.f29417b);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    @Override // s6.h
    public final o0 a(com.google.crypto.tink.shaded.protobuf.h hVar) {
        try {
            return e().a(hVar);
        } catch (a0 e10) {
            throw new GeneralSecurityException("Failures parsing proto of type " + this.f29416a.f().b().getName(), e10);
        }
    }

    @Override // s6.h
    public final e7.y b(com.google.crypto.tink.shaded.protobuf.h hVar) {
        try {
            return (e7.y) e7.y.c0().u(c()).v(e().a(hVar).e()).t(this.f29416a.g()).j();
        } catch (a0 e10) {
            throw new GeneralSecurityException("Unexpected proto", e10);
        }
    }

    @Override // s6.h
    public final String c() {
        return this.f29416a.d();
    }

    @Override // s6.h
    public final Object d(com.google.crypto.tink.shaded.protobuf.h hVar) {
        try {
            return f(this.f29416a.h(hVar));
        } catch (a0 e10) {
            throw new GeneralSecurityException("Failures parsing proto of type " + this.f29416a.c().getName(), e10);
        }
    }
}
