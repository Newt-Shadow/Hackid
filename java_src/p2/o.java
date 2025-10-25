package p2;

import p2.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class o {

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract o a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(n2.c cVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a c(n2.d dVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a d(n2.h hVar);

        public abstract a e(p pVar);

        public abstract a f(String str);
    }

    public static a a() {
        return new c.b();
    }

    public abstract n2.c b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract n2.d c();

    public byte[] d() {
        return (byte[]) e().apply(c().c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract n2.h e();

    public abstract p f();

    public abstract String g();
}
