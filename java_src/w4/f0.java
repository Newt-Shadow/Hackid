package w4;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import b3.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import o6.q;
import y4.q0;
/* loaded from: classes.dex */
public class f0 implements b3.r {
    public static final f0 A;
    public static final f0 B;
    private static final String C;
    private static final String D;
    private static final String E;
    private static final String F;
    private static final String G;
    private static final String H;
    private static final String I;
    private static final String J;
    private static final String K;
    private static final String L;
    private static final String M;
    private static final String N;
    private static final String O;
    private static final String P;
    private static final String Q;
    private static final String R;
    private static final String S;
    private static final String T;
    private static final String U;
    private static final String V;
    private static final String W;
    private static final String X;
    private static final String Y;
    private static final String Z;

    /* renamed from: a0  reason: collision with root package name */
    private static final String f31782a0;

    /* renamed from: b0  reason: collision with root package name */
    private static final String f31783b0;

    /* renamed from: c0  reason: collision with root package name */
    public static final r.a f31784c0;

    /* renamed from: a  reason: collision with root package name */
    public final int f31785a;

    /* renamed from: b  reason: collision with root package name */
    public final int f31786b;

    /* renamed from: c  reason: collision with root package name */
    public final int f31787c;

    /* renamed from: d  reason: collision with root package name */
    public final int f31788d;

    /* renamed from: e  reason: collision with root package name */
    public final int f31789e;

    /* renamed from: f  reason: collision with root package name */
    public final int f31790f;

    /* renamed from: g  reason: collision with root package name */
    public final int f31791g;

    /* renamed from: h  reason: collision with root package name */
    public final int f31792h;

    /* renamed from: i  reason: collision with root package name */
    public final int f31793i;

    /* renamed from: j  reason: collision with root package name */
    public final int f31794j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f31795k;

    /* renamed from: l  reason: collision with root package name */
    public final o6.q f31796l;

    /* renamed from: m  reason: collision with root package name */
    public final int f31797m;

    /* renamed from: n  reason: collision with root package name */
    public final o6.q f31798n;

    /* renamed from: o  reason: collision with root package name */
    public final int f31799o;

    /* renamed from: p  reason: collision with root package name */
    public final int f31800p;

    /* renamed from: q  reason: collision with root package name */
    public final int f31801q;

    /* renamed from: r  reason: collision with root package name */
    public final o6.q f31802r;

    /* renamed from: s  reason: collision with root package name */
    public final o6.q f31803s;

    /* renamed from: t  reason: collision with root package name */
    public final int f31804t;

    /* renamed from: u  reason: collision with root package name */
    public final int f31805u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f31806v;

    /* renamed from: w  reason: collision with root package name */
    public final boolean f31807w;

    /* renamed from: x  reason: collision with root package name */
    public final boolean f31808x;

    /* renamed from: y  reason: collision with root package name */
    public final o6.r f31809y;

    /* renamed from: z  reason: collision with root package name */
    public final o6.s f31810z;

    static {
        f0 A2 = new a().A();
        A = A2;
        B = A2;
        C = q0.q0(1);
        D = q0.q0(2);
        E = q0.q0(3);
        F = q0.q0(4);
        G = q0.q0(5);
        H = q0.q0(6);
        I = q0.q0(7);
        J = q0.q0(8);
        K = q0.q0(9);
        L = q0.q0(10);
        M = q0.q0(11);
        N = q0.q0(12);
        O = q0.q0(13);
        P = q0.q0(14);
        Q = q0.q0(15);
        R = q0.q0(16);
        S = q0.q0(17);
        T = q0.q0(18);
        U = q0.q0(19);
        V = q0.q0(20);
        W = q0.q0(21);
        X = q0.q0(22);
        Y = q0.q0(23);
        Z = q0.q0(24);
        f31782a0 = q0.q0(25);
        f31783b0 = q0.q0(26);
        f31784c0 = new r.a() { // from class: w4.e0
            @Override // b3.r.a
            public final b3.r fromBundle(Bundle bundle) {
                return f0.A(bundle);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f0(a aVar) {
        this.f31785a = aVar.f31811a;
        this.f31786b = aVar.f31812b;
        this.f31787c = aVar.f31813c;
        this.f31788d = aVar.f31814d;
        this.f31789e = aVar.f31815e;
        this.f31790f = aVar.f31816f;
        this.f31791g = aVar.f31817g;
        this.f31792h = aVar.f31818h;
        this.f31793i = aVar.f31819i;
        this.f31794j = aVar.f31820j;
        this.f31795k = aVar.f31821k;
        this.f31796l = aVar.f31822l;
        this.f31797m = aVar.f31823m;
        this.f31798n = aVar.f31824n;
        this.f31799o = aVar.f31825o;
        this.f31800p = aVar.f31826p;
        this.f31801q = aVar.f31827q;
        this.f31802r = aVar.f31828r;
        this.f31803s = aVar.f31829s;
        this.f31804t = aVar.f31830t;
        this.f31805u = aVar.f31831u;
        this.f31806v = aVar.f31832v;
        this.f31807w = aVar.f31833w;
        this.f31808x = aVar.f31834x;
        this.f31809y = o6.r.c(aVar.f31835y);
        this.f31810z = o6.s.r(aVar.f31836z);
    }

    public static f0 A(Bundle bundle) {
        return new a(bundle).A();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.f31785a == f0Var.f31785a && this.f31786b == f0Var.f31786b && this.f31787c == f0Var.f31787c && this.f31788d == f0Var.f31788d && this.f31789e == f0Var.f31789e && this.f31790f == f0Var.f31790f && this.f31791g == f0Var.f31791g && this.f31792h == f0Var.f31792h && this.f31795k == f0Var.f31795k && this.f31793i == f0Var.f31793i && this.f31794j == f0Var.f31794j && this.f31796l.equals(f0Var.f31796l) && this.f31797m == f0Var.f31797m && this.f31798n.equals(f0Var.f31798n) && this.f31799o == f0Var.f31799o && this.f31800p == f0Var.f31800p && this.f31801q == f0Var.f31801q && this.f31802r.equals(f0Var.f31802r) && this.f31803s.equals(f0Var.f31803s) && this.f31804t == f0Var.f31804t && this.f31805u == f0Var.f31805u && this.f31806v == f0Var.f31806v && this.f31807w == f0Var.f31807w && this.f31808x == f0Var.f31808x && this.f31809y.equals(f0Var.f31809y) && this.f31810z.equals(f0Var.f31810z)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.f31785a + 31) * 31) + this.f31786b) * 31) + this.f31787c) * 31) + this.f31788d) * 31) + this.f31789e) * 31) + this.f31790f) * 31) + this.f31791g) * 31) + this.f31792h) * 31) + (this.f31795k ? 1 : 0)) * 31) + this.f31793i) * 31) + this.f31794j) * 31) + this.f31796l.hashCode()) * 31) + this.f31797m) * 31) + this.f31798n.hashCode()) * 31) + this.f31799o) * 31) + this.f31800p) * 31) + this.f31801q) * 31) + this.f31802r.hashCode()) * 31) + this.f31803s.hashCode()) * 31) + this.f31804t) * 31) + this.f31805u) * 31) + (this.f31806v ? 1 : 0)) * 31) + (this.f31807w ? 1 : 0)) * 31) + (this.f31808x ? 1 : 0)) * 31) + this.f31809y.hashCode()) * 31) + this.f31810z.hashCode();
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f31811a;

        /* renamed from: b  reason: collision with root package name */
        private int f31812b;

        /* renamed from: c  reason: collision with root package name */
        private int f31813c;

        /* renamed from: d  reason: collision with root package name */
        private int f31814d;

        /* renamed from: e  reason: collision with root package name */
        private int f31815e;

        /* renamed from: f  reason: collision with root package name */
        private int f31816f;

        /* renamed from: g  reason: collision with root package name */
        private int f31817g;

        /* renamed from: h  reason: collision with root package name */
        private int f31818h;

        /* renamed from: i  reason: collision with root package name */
        private int f31819i;

        /* renamed from: j  reason: collision with root package name */
        private int f31820j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f31821k;

        /* renamed from: l  reason: collision with root package name */
        private o6.q f31822l;

        /* renamed from: m  reason: collision with root package name */
        private int f31823m;

        /* renamed from: n  reason: collision with root package name */
        private o6.q f31824n;

        /* renamed from: o  reason: collision with root package name */
        private int f31825o;

        /* renamed from: p  reason: collision with root package name */
        private int f31826p;

        /* renamed from: q  reason: collision with root package name */
        private int f31827q;

        /* renamed from: r  reason: collision with root package name */
        private o6.q f31828r;

        /* renamed from: s  reason: collision with root package name */
        private o6.q f31829s;

        /* renamed from: t  reason: collision with root package name */
        private int f31830t;

        /* renamed from: u  reason: collision with root package name */
        private int f31831u;

        /* renamed from: v  reason: collision with root package name */
        private boolean f31832v;

        /* renamed from: w  reason: collision with root package name */
        private boolean f31833w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f31834x;

        /* renamed from: y  reason: collision with root package name */
        private HashMap f31835y;

        /* renamed from: z  reason: collision with root package name */
        private HashSet f31836z;

        public a() {
            this.f31811a = Integer.MAX_VALUE;
            this.f31812b = Integer.MAX_VALUE;
            this.f31813c = Integer.MAX_VALUE;
            this.f31814d = Integer.MAX_VALUE;
            this.f31819i = Integer.MAX_VALUE;
            this.f31820j = Integer.MAX_VALUE;
            this.f31821k = true;
            this.f31822l = o6.q.D();
            this.f31823m = 0;
            this.f31824n = o6.q.D();
            this.f31825o = 0;
            this.f31826p = Integer.MAX_VALUE;
            this.f31827q = Integer.MAX_VALUE;
            this.f31828r = o6.q.D();
            this.f31829s = o6.q.D();
            this.f31830t = 0;
            this.f31831u = 0;
            this.f31832v = false;
            this.f31833w = false;
            this.f31834x = false;
            this.f31835y = new HashMap();
            this.f31836z = new HashSet();
        }

        private void B(f0 f0Var) {
            this.f31811a = f0Var.f31785a;
            this.f31812b = f0Var.f31786b;
            this.f31813c = f0Var.f31787c;
            this.f31814d = f0Var.f31788d;
            this.f31815e = f0Var.f31789e;
            this.f31816f = f0Var.f31790f;
            this.f31817g = f0Var.f31791g;
            this.f31818h = f0Var.f31792h;
            this.f31819i = f0Var.f31793i;
            this.f31820j = f0Var.f31794j;
            this.f31821k = f0Var.f31795k;
            this.f31822l = f0Var.f31796l;
            this.f31823m = f0Var.f31797m;
            this.f31824n = f0Var.f31798n;
            this.f31825o = f0Var.f31799o;
            this.f31826p = f0Var.f31800p;
            this.f31827q = f0Var.f31801q;
            this.f31828r = f0Var.f31802r;
            this.f31829s = f0Var.f31803s;
            this.f31830t = f0Var.f31804t;
            this.f31831u = f0Var.f31805u;
            this.f31832v = f0Var.f31806v;
            this.f31833w = f0Var.f31807w;
            this.f31834x = f0Var.f31808x;
            this.f31836z = new HashSet(f0Var.f31810z);
            this.f31835y = new HashMap(f0Var.f31809y);
        }

        private static o6.q C(String[] strArr) {
            q.a r10 = o6.q.r();
            for (String str : (String[]) y4.a.e(strArr)) {
                r10.a(q0.C0((String) y4.a.e(str)));
            }
            return r10.k();
        }

        private void F(Context context) {
            CaptioningManager captioningManager;
            if ((q0.f32946a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.f31830t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f31829s = o6.q.F(q0.X(locale));
                }
            }
        }

        public f0 A() {
            return new f0(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a D(f0 f0Var) {
            B(f0Var);
            return this;
        }

        public a E(Context context) {
            if (q0.f32946a >= 19) {
                F(context);
            }
            return this;
        }

        public a G(int i10, int i11, boolean z10) {
            this.f31819i = i10;
            this.f31820j = i11;
            this.f31821k = z10;
            return this;
        }

        public a H(Context context, boolean z10) {
            Point O = q0.O(context);
            return G(O.x, O.y, z10);
        }

        public a(Context context) {
            this();
            E(context);
            H(context, true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(f0 f0Var) {
            B(f0Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Bundle bundle) {
            o6.q b10;
            String str = f0.H;
            f0 f0Var = f0.A;
            this.f31811a = bundle.getInt(str, f0Var.f31785a);
            this.f31812b = bundle.getInt(f0.I, f0Var.f31786b);
            this.f31813c = bundle.getInt(f0.J, f0Var.f31787c);
            this.f31814d = bundle.getInt(f0.K, f0Var.f31788d);
            this.f31815e = bundle.getInt(f0.L, f0Var.f31789e);
            this.f31816f = bundle.getInt(f0.M, f0Var.f31790f);
            this.f31817g = bundle.getInt(f0.N, f0Var.f31791g);
            this.f31818h = bundle.getInt(f0.O, f0Var.f31792h);
            this.f31819i = bundle.getInt(f0.P, f0Var.f31793i);
            this.f31820j = bundle.getInt(f0.Q, f0Var.f31794j);
            this.f31821k = bundle.getBoolean(f0.R, f0Var.f31795k);
            this.f31822l = o6.q.y((String[]) n6.i.a(bundle.getStringArray(f0.S), new String[0]));
            this.f31823m = bundle.getInt(f0.f31782a0, f0Var.f31797m);
            this.f31824n = C((String[]) n6.i.a(bundle.getStringArray(f0.C), new String[0]));
            this.f31825o = bundle.getInt(f0.D, f0Var.f31799o);
            this.f31826p = bundle.getInt(f0.T, f0Var.f31800p);
            this.f31827q = bundle.getInt(f0.U, f0Var.f31801q);
            this.f31828r = o6.q.y((String[]) n6.i.a(bundle.getStringArray(f0.V), new String[0]));
            this.f31829s = C((String[]) n6.i.a(bundle.getStringArray(f0.E), new String[0]));
            this.f31830t = bundle.getInt(f0.F, f0Var.f31804t);
            this.f31831u = bundle.getInt(f0.f31783b0, f0Var.f31805u);
            this.f31832v = bundle.getBoolean(f0.G, f0Var.f31806v);
            this.f31833w = bundle.getBoolean(f0.W, f0Var.f31807w);
            this.f31834x = bundle.getBoolean(f0.X, f0Var.f31808x);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(f0.Y);
            if (parcelableArrayList == null) {
                b10 = o6.q.D();
            } else {
                b10 = y4.c.b(d0.f31779e, parcelableArrayList);
            }
            this.f31835y = new HashMap();
            for (int i10 = 0; i10 < b10.size(); i10++) {
                d0 d0Var = (d0) b10.get(i10);
                this.f31835y.put(d0Var.f31780a, d0Var);
            }
            int[] iArr = (int[]) n6.i.a(bundle.getIntArray(f0.Z), new int[0]);
            this.f31836z = new HashSet();
            for (int i11 : iArr) {
                this.f31836z.add(Integer.valueOf(i11));
            }
        }
    }
}
