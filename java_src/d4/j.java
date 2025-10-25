package d4;

import android.content.Context;
import d4.t;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import x4.j;
import x4.r;
/* loaded from: classes.dex */
public final class j implements t.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f14827a;

    /* renamed from: b  reason: collision with root package name */
    private j.a f14828b;

    /* renamed from: c  reason: collision with root package name */
    private long f14829c;

    /* renamed from: d  reason: collision with root package name */
    private long f14830d;

    /* renamed from: e  reason: collision with root package name */
    private long f14831e;

    /* renamed from: f  reason: collision with root package name */
    private float f14832f;

    /* renamed from: g  reason: collision with root package name */
    private float f14833g;

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final g3.p f14834a;

        /* renamed from: b  reason: collision with root package name */
        private final Map f14835b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        private final Set f14836c = new HashSet();

        /* renamed from: d  reason: collision with root package name */
        private final Map f14837d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private j.a f14838e;

        public a(g3.p pVar) {
            this.f14834a = pVar;
        }

        public void a(j.a aVar) {
            if (aVar != this.f14838e) {
                this.f14838e = aVar;
                this.f14835b.clear();
                this.f14837d.clear();
            }
        }
    }

    public j(Context context, g3.p pVar) {
        this(new r.a(context), pVar);
    }

    public j(j.a aVar, g3.p pVar) {
        this.f14828b = aVar;
        a aVar2 = new a(pVar);
        this.f14827a = aVar2;
        aVar2.a(aVar);
        this.f14829c = -9223372036854775807L;
        this.f14830d = -9223372036854775807L;
        this.f14831e = -9223372036854775807L;
        this.f14832f = -3.4028235E38f;
        this.f14833g = -3.4028235E38f;
    }
}
