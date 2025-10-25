package androidx.activity;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: e  reason: collision with root package name */
    public static final a f524e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final float f525a;

    /* renamed from: b  reason: collision with root package name */
    private final float f526b;

    /* renamed from: c  reason: collision with root package name */
    private final float f527c;

    /* renamed from: d  reason: collision with root package name */
    private final int f528d;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(float f10, float f11, float f12, int i10) {
        this.f525a = f10;
        this.f526b = f11;
        this.f527c = f12;
        this.f528d = i10;
    }

    public final float a() {
        return this.f527c;
    }

    public String toString() {
        return "BackEventCompat{touchX=" + this.f525a + ", touchY=" + this.f526b + ", progress=" + this.f527c + ", swipeEdge=" + this.f528d + '}';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(android.window.BackEvent r5) {
        /*
            r4 = this;
            java.lang.String r0 = "backEvent"
            kotlin.jvm.internal.m.e(r5, r0)
            androidx.activity.a r0 = androidx.activity.a.f523a
            float r1 = r0.c(r5)
            float r2 = r0.d(r5)
            float r3 = r0.a(r5)
            int r5 = r0.b(r5)
            r4.<init>(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.b.<init>(android.window.BackEvent):void");
    }
}
