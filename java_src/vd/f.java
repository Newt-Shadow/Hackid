package vd;

import id.Function2;
import yd.f0;
import yd.i0;
/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final m f31379a = new m(-1, null, null, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final int f31380b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f31381c;

    /* renamed from: d  reason: collision with root package name */
    public static final f0 f31382d;

    /* renamed from: e  reason: collision with root package name */
    private static final f0 f31383e;

    /* renamed from: f  reason: collision with root package name */
    private static final f0 f31384f;

    /* renamed from: g  reason: collision with root package name */
    private static final f0 f31385g;

    /* renamed from: h  reason: collision with root package name */
    private static final f0 f31386h;

    /* renamed from: i  reason: collision with root package name */
    private static final f0 f31387i;

    /* renamed from: j  reason: collision with root package name */
    private static final f0 f31388j;

    /* renamed from: k  reason: collision with root package name */
    private static final f0 f31389k;

    /* renamed from: l  reason: collision with root package name */
    private static final f0 f31390l;

    /* renamed from: m  reason: collision with root package name */
    private static final f0 f31391m;

    /* renamed from: n  reason: collision with root package name */
    private static final f0 f31392n;

    /* renamed from: o  reason: collision with root package name */
    private static final f0 f31393o;

    /* renamed from: p  reason: collision with root package name */
    private static final f0 f31394p;

    /* renamed from: q  reason: collision with root package name */
    private static final f0 f31395q;

    /* renamed from: r  reason: collision with root package name */
    private static final f0 f31396r;

    /* renamed from: s  reason: collision with root package name */
    private static final f0 f31397s;

    /* loaded from: classes2.dex */
    /* synthetic */ class a extends kotlin.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f31398a = new a();

        a() {
            super(2, f.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
        }

        public final m f(long j10, m mVar) {
            return f.x(j10, mVar);
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return f(((Number) obj).longValue(), (m) obj2);
        }
    }

    static {
        int e10;
        int e11;
        e10 = i0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);
        f31380b = e10;
        e11 = i0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);
        f31381c = e11;
        f31382d = new f0("BUFFERED");
        f31383e = new f0("SHOULD_BUFFER");
        f31384f = new f0("S_RESUMING_BY_RCV");
        f31385g = new f0("RESUMING_BY_EB");
        f31386h = new f0("POISONED");
        f31387i = new f0("DONE_RCV");
        f31388j = new f0("INTERRUPTED_SEND");
        f31389k = new f0("INTERRUPTED_RCV");
        f31390l = new f0("CHANNEL_CLOSED");
        f31391m = new f0("SUSPEND");
        f31392n = new f0("SUSPEND_NO_WAITER");
        f31393o = new f0("FAILED");
        f31394p = new f0("NO_RECEIVE_RESULT");
        f31395q = new f0("CLOSE_HANDLER_CLOSED");
        f31396r = new f0("CLOSE_HANDLER_INVOKED");
        f31397s = new f0("NO_CLOSE_CAUSE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long A(int i10) {
        if (i10 != 0) {
            if (i10 != Integer.MAX_VALUE) {
                return i10;
            }
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B(td.l lVar, Object obj, id.p pVar) {
        Object d10 = lVar.d(obj, null, pVar);
        if (d10 != null) {
            lVar.A(d10);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean C(td.l lVar, Object obj, id.p pVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            pVar = null;
        }
        return B(lVar, obj, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long v(long j10, boolean z10) {
        return (z10 ? 4611686018427387904L : 0L) + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long w(long j10, int i10) {
        return (i10 << 60) + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final m x(long j10, m mVar) {
        return new m(j10, mVar, mVar.y(), 0);
    }

    public static final pd.f y() {
        return a.f31398a;
    }

    public static final f0 z() {
        return f31390l;
    }
}
