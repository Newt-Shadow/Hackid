package ue;

import af.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.s;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final C0345a f31097c = new C0345a(null);

    /* renamed from: a  reason: collision with root package name */
    private final f f31098a;

    /* renamed from: b  reason: collision with root package name */
    private long f31099b;

    /* renamed from: ue.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0345a {
        private C0345a() {
        }

        public /* synthetic */ C0345a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(f source) {
        m.e(source, "source");
        this.f31098a = source;
        this.f31099b = 262144L;
    }

    public final s a() {
        boolean z10;
        s.a aVar = new s.a();
        while (true) {
            String b10 = b();
            if (b10.length() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                return aVar.d();
            }
            aVar.b(b10);
        }
    }

    public final String b() {
        String a02 = this.f31098a.a0(this.f31099b);
        this.f31099b -= a02.length();
        return a02;
    }
}
