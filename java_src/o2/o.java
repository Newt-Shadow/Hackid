package o2;

import o2.e;
/* loaded from: classes.dex */
public abstract class o {

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract o a();

        public abstract a b(o2.a aVar);

        public abstract a c(b bVar);
    }

    /* loaded from: classes.dex */
    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f27087a;

        b(int i10) {
            this.f27087a = i10;
        }
    }

    public static a a() {
        return new e.b();
    }

    public abstract o2.a b();

    public abstract b c();
}
