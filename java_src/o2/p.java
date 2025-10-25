package o2;

import android.util.SparseArray;
import o2.f;
/* loaded from: classes.dex */
public abstract class p {

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract p a();

        public abstract a b(s sVar);

        public abstract a c(b bVar);
    }

    /* loaded from: classes.dex */
    public enum b {
        NOT_SET(0),
        EVENT_OVERRIDE(5);
        

        /* renamed from: d  reason: collision with root package name */
        private static final SparseArray f27090d;

        /* renamed from: a  reason: collision with root package name */
        private final int f27092a;

        static {
            b bVar = NOT_SET;
            b bVar2 = EVENT_OVERRIDE;
            SparseArray sparseArray = new SparseArray();
            f27090d = sparseArray;
            sparseArray.put(0, bVar);
            sparseArray.put(5, bVar2);
        }

        b(int i10) {
            this.f27092a = i10;
        }
    }

    public static a a() {
        return new f.b();
    }

    public abstract s b();

    public abstract b c();
}
