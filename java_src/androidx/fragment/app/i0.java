package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.q0;
import androidx.lifecycle.i;
import f.g;
import h1.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import t0.c;
/* loaded from: classes.dex */
public abstract class i0 {
    private static boolean U = false;
    static boolean V = true;
    p A;
    private f.c F;
    private f.c G;
    private f.c H;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private ArrayList O;
    private ArrayList P;
    private ArrayList Q;
    private l0 R;
    private c.C0310c S;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2646b;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList f2649e;

    /* renamed from: g  reason: collision with root package name */
    private androidx.activity.w f2651g;

    /* renamed from: x  reason: collision with root package name */
    private a0 f2668x;

    /* renamed from: y  reason: collision with root package name */
    private w f2669y;

    /* renamed from: z  reason: collision with root package name */
    private p f2670z;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f2645a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final p0 f2647c = new p0();

    /* renamed from: d  reason: collision with root package name */
    ArrayList f2648d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final b0 f2650f = new b0(this);

    /* renamed from: h  reason: collision with root package name */
    androidx.fragment.app.a f2652h = null;

    /* renamed from: i  reason: collision with root package name */
    boolean f2653i = false;

    /* renamed from: j  reason: collision with root package name */
    private final androidx.activity.v f2654j = new b(false);

    /* renamed from: k  reason: collision with root package name */
    private final AtomicInteger f2655k = new AtomicInteger();

    /* renamed from: l  reason: collision with root package name */
    private final Map f2656l = Collections.synchronizedMap(new HashMap());

    /* renamed from: m  reason: collision with root package name */
    private final Map f2657m = Collections.synchronizedMap(new HashMap());

    /* renamed from: n  reason: collision with root package name */
    private final Map f2658n = Collections.synchronizedMap(new HashMap());

    /* renamed from: o  reason: collision with root package name */
    ArrayList f2659o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    private final c0 f2660p = new c0(this);

    /* renamed from: q  reason: collision with root package name */
    private final CopyOnWriteArrayList f2661q = new CopyOnWriteArrayList();

    /* renamed from: r  reason: collision with root package name */
    private final c0.a f2662r = new c0.a() { // from class: androidx.fragment.app.d0
        @Override // c0.a
        public final void accept(Object obj) {
            i0.this.S0((Configuration) obj);
        }
    };

    /* renamed from: s  reason: collision with root package name */
    private final c0.a f2663s = new c0.a() { // from class: androidx.fragment.app.e0
        @Override // c0.a
        public final void accept(Object obj) {
            i0.this.T0((Integer) obj);
        }
    };

    /* renamed from: t  reason: collision with root package name */
    private final c0.a f2664t = new c0.a() { // from class: androidx.fragment.app.f0
        @Override // c0.a
        public final void accept(Object obj) {
            i0.this.U0((androidx.core.app.h) obj);
        }
    };

    /* renamed from: u  reason: collision with root package name */
    private final c0.a f2665u = new c0.a() { // from class: androidx.fragment.app.g0
        @Override // c0.a
        public final void accept(Object obj) {
            i0.this.V0((androidx.core.app.u) obj);
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private final d0.b0 f2666v = new c();

    /* renamed from: w  reason: collision with root package name */
    int f2667w = -1;
    private z B = null;
    private z C = new d();
    private z0 D = null;
    private z0 E = new e();
    ArrayDeque I = new ArrayDeque();
    private Runnable T = new f();

    /* loaded from: classes.dex */
    class a implements f.b {
        a() {
        }

        @Override // f.b
        /* renamed from: b */
        public void a(Map map) {
            int i10;
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                if (((Boolean) arrayList.get(i11)).booleanValue()) {
                    i10 = 0;
                } else {
                    i10 = -1;
                }
                iArr[i11] = i10;
            }
            l lVar = (l) i0.this.I.pollFirst();
            if (lVar == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = lVar.f2681a;
            int i12 = lVar.f2682b;
            p i13 = i0.this.f2647c.i(str);
            if (i13 == null) {
                Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                return;
            }
            i13.onRequestPermissionsResult(i12, strArr, iArr);
        }
    }

    /* loaded from: classes.dex */
    class b extends androidx.activity.v {
        b(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.v
        public void handleOnBackCancelled() {
            if (i0.J0(3)) {
                Log.d("FragmentManager", "handleOnBackCancelled. PREDICTIVE_BACK = " + i0.V + " fragment manager " + i0.this);
            }
            if (i0.V) {
                i0.this.p();
                i0.this.f2652h = null;
            }
        }

        @Override // androidx.activity.v
        public void handleOnBackPressed() {
            if (i0.J0(3)) {
                Log.d("FragmentManager", "handleOnBackPressed. PREDICTIVE_BACK = " + i0.V + " fragment manager " + i0.this);
            }
            i0.this.F0();
        }

        @Override // androidx.activity.v
        public void handleOnBackProgressed(androidx.activity.b bVar) {
            if (i0.J0(2)) {
                Log.v("FragmentManager", "handleOnBackProgressed. PREDICTIVE_BACK = " + i0.V + " fragment manager " + i0.this);
            }
            i0 i0Var = i0.this;
            if (i0Var.f2652h != null) {
                for (y0 y0Var : i0Var.v(new ArrayList(Collections.singletonList(i0.this.f2652h)), 0, 1)) {
                    y0Var.y(bVar);
                }
                Iterator it = i0.this.f2659o.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.b.a(it.next());
                    throw null;
                }
            }
        }

        @Override // androidx.activity.v
        public void handleOnBackStarted(androidx.activity.b bVar) {
            if (i0.J0(3)) {
                Log.d("FragmentManager", "handleOnBackStarted. PREDICTIVE_BACK = " + i0.V + " fragment manager " + i0.this);
            }
            if (i0.V) {
                i0.this.Y();
                i0.this.j1();
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements d0.b0 {
        c() {
        }

        @Override // d0.b0
        public boolean a(MenuItem menuItem) {
            return i0.this.K(menuItem);
        }

        @Override // d0.b0
        public void b(Menu menu) {
            i0.this.L(menu);
        }

        @Override // d0.b0
        public void c(Menu menu, MenuInflater menuInflater) {
            i0.this.D(menu, menuInflater);
        }

        @Override // d0.b0
        public void d(Menu menu) {
            i0.this.P(menu);
        }
    }

    /* loaded from: classes.dex */
    class d extends z {
        d() {
        }

        @Override // androidx.fragment.app.z
        public p a(ClassLoader classLoader, String str) {
            return i0.this.w0().b(i0.this.w0().f(), str, null);
        }
    }

    /* loaded from: classes.dex */
    class e implements z0 {
        e() {
        }

        @Override // androidx.fragment.app.z0
        public y0 a(ViewGroup viewGroup) {
            return new androidx.fragment.app.f(viewGroup);
        }
    }

    /* loaded from: classes.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.b0(true);
        }
    }

    /* loaded from: classes.dex */
    class g implements m0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f2677a;

        g(p pVar) {
            this.f2677a = pVar;
        }

        @Override // androidx.fragment.app.m0
        public void a(i0 i0Var, p pVar) {
            this.f2677a.onAttachFragment(pVar);
        }
    }

    /* loaded from: classes.dex */
    class h implements f.b {
        h() {
        }

        @Override // f.b
        /* renamed from: b */
        public void a(f.a aVar) {
            l lVar = (l) i0.this.I.pollLast();
            if (lVar == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = lVar.f2681a;
            int i10 = lVar.f2682b;
            p i11 = i0.this.f2647c.i(str);
            if (i11 == null) {
                Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
                return;
            }
            i11.onActivityResult(i10, aVar.b(), aVar.a());
        }
    }

    /* loaded from: classes.dex */
    class i implements f.b {
        i() {
        }

        @Override // f.b
        /* renamed from: b */
        public void a(f.a aVar) {
            l lVar = (l) i0.this.I.pollFirst();
            if (lVar == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = lVar.f2681a;
            int i10 = lVar.f2682b;
            p i11 = i0.this.f2647c.i(str);
            if (i11 == null) {
                Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
                return;
            }
            i11.onActivityResult(i10, aVar.b(), aVar.a());
        }
    }

    /* loaded from: classes.dex */
    static class j extends g.a {
        j() {
        }

        @Override // g.a
        /* renamed from: d */
        public Intent a(Context context, f.g gVar) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent a10 = gVar.a();
            if (a10 != null && (bundleExtra = a10.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                a10.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (a10.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    gVar = new g.a(gVar.d()).b(null).c(gVar.c(), gVar.b()).a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", gVar);
            if (i0.J0(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // g.a
        /* renamed from: e */
        public f.a c(int i10, Intent intent) {
            return new f.a(i10, intent);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class k {
        @Deprecated
        public void onFragmentActivityCreated(i0 i0Var, p pVar, Bundle bundle) {
        }

        public void onFragmentAttached(i0 i0Var, p pVar, Context context) {
        }

        public void onFragmentCreated(i0 i0Var, p pVar, Bundle bundle) {
        }

        public void onFragmentDestroyed(i0 i0Var, p pVar) {
        }

        public void onFragmentDetached(i0 i0Var, p pVar) {
        }

        public void onFragmentPaused(i0 i0Var, p pVar) {
        }

        public void onFragmentPreAttached(i0 i0Var, p pVar, Context context) {
        }

        public void onFragmentPreCreated(i0 i0Var, p pVar, Bundle bundle) {
        }

        public void onFragmentResumed(i0 i0Var, p pVar) {
        }

        public void onFragmentSaveInstanceState(i0 i0Var, p pVar, Bundle bundle) {
        }

        public void onFragmentStarted(i0 i0Var, p pVar) {
        }

        public void onFragmentStopped(i0 i0Var, p pVar) {
        }

        public void onFragmentViewCreated(i0 i0Var, p pVar, View view, Bundle bundle) {
        }

        public void onFragmentViewDestroyed(i0 i0Var, p pVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface m {
        boolean a(ArrayList arrayList, ArrayList arrayList2);
    }

    /* loaded from: classes.dex */
    private class n implements m {

        /* renamed from: a  reason: collision with root package name */
        final String f2683a;

        /* renamed from: b  reason: collision with root package name */
        final int f2684b;

        /* renamed from: c  reason: collision with root package name */
        final int f2685c;

        n(String str, int i10, int i11) {
            this.f2683a = str;
            this.f2684b = i10;
            this.f2685c = i11;
        }

        @Override // androidx.fragment.app.i0.m
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            p pVar = i0.this.A;
            if (pVar != null && this.f2684b < 0 && this.f2683a == null && pVar.getChildFragmentManager().e1()) {
                return false;
            }
            return i0.this.h1(arrayList, arrayList2, this.f2683a, this.f2684b, this.f2685c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class o implements m {
        o() {
        }

        @Override // androidx.fragment.app.i0.m
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            boolean i12 = i0.this.i1(arrayList, arrayList2);
            i0 i0Var = i0.this;
            i0Var.f2653i = true;
            if (!i0Var.f2659o.isEmpty() && arrayList.size() > 0) {
                ((Boolean) arrayList2.get(arrayList.size() - 1)).booleanValue();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    linkedHashSet.addAll(i0.this.o0((androidx.fragment.app.a) it.next()));
                }
                Iterator it2 = i0.this.f2659o.iterator();
                while (it2.hasNext()) {
                    android.support.v4.media.session.b.a(it2.next());
                    Iterator it3 = linkedHashSet.iterator();
                    if (it3.hasNext()) {
                        p pVar = (p) it3.next();
                        throw null;
                    }
                }
            }
            return i12;
        }
    }

    private void B1() {
        synchronized (this.f2645a) {
            boolean z10 = true;
            if (!this.f2645a.isEmpty()) {
                this.f2654j.setEnabled(true);
                if (J0(3)) {
                    Log.d("FragmentManager", "FragmentManager " + this + " enabling OnBackPressedCallback, caused by non-empty pending actions");
                }
                return;
            }
            z10 = (q0() <= 0 || !O0(this.f2670z)) ? false : false;
            if (J0(3)) {
                Log.d("FragmentManager", "OnBackPressedCallback for FragmentManager " + this + " enabled state is " + z10);
            }
            this.f2654j.setEnabled(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p D0(View view) {
        Object tag = view.getTag(s0.b.f29226a);
        if (tag instanceof p) {
            return (p) tag;
        }
        return null;
    }

    public static boolean J0(int i10) {
        if (!U && !Log.isLoggable("FragmentManager", i10)) {
            return false;
        }
        return true;
    }

    private boolean K0(p pVar) {
        if ((pVar.mHasMenu && pVar.mMenuVisible) || pVar.mChildFragmentManager.q()) {
            return true;
        }
        return false;
    }

    private boolean L0() {
        p pVar = this.f2670z;
        if (pVar == null) {
            return true;
        }
        if (pVar.isAdded() && this.f2670z.getParentFragmentManager().L0()) {
            return true;
        }
        return false;
    }

    private void M(p pVar) {
        if (pVar != null && pVar.equals(g0(pVar.mWho))) {
            pVar.performPrimaryNavigationFragmentChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S0(Configuration configuration) {
        if (L0()) {
            A(configuration, false);
        }
    }

    private void T(int i10) {
        try {
            this.f2646b = true;
            this.f2647c.d(i10);
            Z0(i10, false);
            for (y0 y0Var : u()) {
                y0Var.q();
            }
            this.f2646b = false;
            b0(true);
        } catch (Throwable th) {
            this.f2646b = false;
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0(Integer num) {
        if (L0() && num.intValue() == 80) {
            G(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U0(androidx.core.app.h hVar) {
        if (L0()) {
            H(hVar.a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V0(androidx.core.app.u uVar) {
        if (L0()) {
            O(uVar.a(), false);
        }
    }

    private void W() {
        if (this.N) {
            this.N = false;
            y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        for (y0 y0Var : u()) {
            y0Var.q();
        }
    }

    private void a0(boolean z10) {
        if (!this.f2646b) {
            if (this.f2668x == null) {
                if (this.M) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            } else if (Looper.myLooper() == this.f2668x.h().getLooper()) {
                if (!z10) {
                    r();
                }
                if (this.O == null) {
                    this.O = new ArrayList();
                    this.P = new ArrayList();
                    return;
                }
                return;
            } else {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    private static void d0(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        while (i10 < i11) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList.get(i10);
            if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                aVar.n(-1);
                aVar.s();
            } else {
                aVar.n(1);
                aVar.r();
            }
            i10++;
        }
    }

    private void e0(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        boolean z10 = ((androidx.fragment.app.a) arrayList.get(i10)).f2819r;
        ArrayList arrayList3 = this.Q;
        if (arrayList3 == null) {
            this.Q = new ArrayList();
        } else {
            arrayList3.clear();
        }
        this.Q.addAll(this.f2647c.o());
        p A0 = A0();
        boolean z11 = false;
        for (int i12 = i10; i12 < i11; i12++) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList.get(i12);
            if (!((Boolean) arrayList2.get(i12)).booleanValue()) {
                A0 = aVar.t(this.Q, A0);
            } else {
                A0 = aVar.w(this.Q, A0);
            }
            if (!z11 && !aVar.f2810i) {
                z11 = false;
            } else {
                z11 = true;
            }
        }
        this.Q.clear();
        if (!z10 && this.f2667w >= 1) {
            for (int i13 = i10; i13 < i11; i13++) {
                Iterator it = ((androidx.fragment.app.a) arrayList.get(i13)).f2804c.iterator();
                while (it.hasNext()) {
                    p pVar = ((q0.a) it.next()).f2822b;
                    if (pVar != null && pVar.mFragmentManager != null) {
                        this.f2647c.r(w(pVar));
                    }
                }
            }
        }
        d0(arrayList, arrayList2, i10, i11);
        boolean booleanValue = ((Boolean) arrayList2.get(i11 - 1)).booleanValue();
        if (z11 && !this.f2659o.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                linkedHashSet.addAll(o0((androidx.fragment.app.a) it2.next()));
            }
            if (this.f2652h == null) {
                Iterator it3 = this.f2659o.iterator();
                while (it3.hasNext()) {
                    android.support.v4.media.session.b.a(it3.next());
                    Iterator it4 = linkedHashSet.iterator();
                    if (it4.hasNext()) {
                        p pVar2 = (p) it4.next();
                        throw null;
                    }
                }
                Iterator it5 = this.f2659o.iterator();
                while (it5.hasNext()) {
                    android.support.v4.media.session.b.a(it5.next());
                    Iterator it6 = linkedHashSet.iterator();
                    if (it6.hasNext()) {
                        p pVar3 = (p) it6.next();
                        throw null;
                    }
                }
            }
        }
        for (int i14 = i10; i14 < i11; i14++) {
            androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) arrayList.get(i14);
            if (booleanValue) {
                for (int size = aVar2.f2804c.size() - 1; size >= 0; size--) {
                    p pVar4 = ((q0.a) aVar2.f2804c.get(size)).f2822b;
                    if (pVar4 != null) {
                        w(pVar4).m();
                    }
                }
            } else {
                Iterator it7 = aVar2.f2804c.iterator();
                while (it7.hasNext()) {
                    p pVar5 = ((q0.a) it7.next()).f2822b;
                    if (pVar5 != null) {
                        w(pVar5).m();
                    }
                }
            }
        }
        Z0(this.f2667w, true);
        for (y0 y0Var : v(arrayList, i10, i11)) {
            y0Var.B(booleanValue);
            y0Var.x();
            y0Var.n();
        }
        while (i10 < i11) {
            androidx.fragment.app.a aVar3 = (androidx.fragment.app.a) arrayList.get(i10);
            if (((Boolean) arrayList2.get(i10)).booleanValue() && aVar3.f2554v >= 0) {
                aVar3.f2554v = -1;
            }
            aVar3.v();
            i10++;
        }
        if (z11) {
            o1();
        }
    }

    private boolean g1(String str, int i10, int i11) {
        b0(false);
        a0(true);
        p pVar = this.A;
        if (pVar != null && i10 < 0 && str == null && pVar.getChildFragmentManager().e1()) {
            return true;
        }
        boolean h12 = h1(this.O, this.P, str, i10, i11);
        if (h12) {
            this.f2646b = true;
            try {
                m1(this.O, this.P);
            } finally {
                s();
            }
        }
        B1();
        W();
        this.f2647c.b();
        return h12;
    }

    private int h0(String str, int i10, boolean z10) {
        if (this.f2648d.isEmpty()) {
            return -1;
        }
        if (str == null && i10 < 0) {
            if (z10) {
                return 0;
            }
            return this.f2648d.size() - 1;
        }
        int size = this.f2648d.size() - 1;
        while (size >= 0) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f2648d.get(size);
            if ((str != null && str.equals(aVar.u())) || (i10 >= 0 && i10 == aVar.f2554v)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (z10) {
            while (size > 0) {
                androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) this.f2648d.get(size - 1);
                if ((str != null && str.equals(aVar2.u())) || (i10 >= 0 && i10 == aVar2.f2554v)) {
                    size--;
                } else {
                    return size;
                }
            }
            return size;
        } else if (size == this.f2648d.size() - 1) {
            return -1;
        } else {
            return size + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i0 l0(View view) {
        u uVar;
        p m02 = m0(view);
        if (m02 != null) {
            if (m02.isAdded()) {
                return m02.getChildFragmentManager();
            }
            throw new IllegalStateException("The Fragment " + m02 + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
        }
        Context context = view.getContext();
        while (true) {
            if (context instanceof ContextWrapper) {
                if (context instanceof u) {
                    uVar = (u) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                uVar = null;
                break;
            }
        }
        if (uVar != null) {
            return uVar.getSupportFragmentManager();
        }
        throw new IllegalStateException("View " + view + " is not within a subclass of FragmentActivity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p m0(View view) {
        while (view != null) {
            p D0 = D0(view);
            if (D0 != null) {
                return D0;
            }
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                view = (View) parent;
            } else {
                view = null;
            }
        }
        return null;
    }

    private void m1(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == arrayList2.size()) {
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                if (!((androidx.fragment.app.a) arrayList.get(i10)).f2819r) {
                    if (i11 != i10) {
                        e0(arrayList, arrayList2, i11, i10);
                    }
                    i11 = i10 + 1;
                    if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                        while (i11 < size && ((Boolean) arrayList2.get(i11)).booleanValue() && !((androidx.fragment.app.a) arrayList.get(i11)).f2819r) {
                            i11++;
                        }
                    }
                    e0(arrayList, arrayList2, i10, i11);
                    i10 = i11 - 1;
                }
                i10++;
            }
            if (i11 != size) {
                e0(arrayList, arrayList2, i11, size);
                return;
            }
            return;
        }
        throw new IllegalStateException("Internal error with the back stack records");
    }

    private void n0() {
        for (y0 y0Var : u()) {
            y0Var.r();
        }
    }

    private void o1() {
        if (this.f2659o.size() <= 0) {
            return;
        }
        android.support.v4.media.session.b.a(this.f2659o.get(0));
        throw null;
    }

    private boolean p0(ArrayList arrayList, ArrayList arrayList2) {
        synchronized (this.f2645a) {
            if (this.f2645a.isEmpty()) {
                return false;
            }
            int size = this.f2645a.size();
            boolean z10 = false;
            for (int i10 = 0; i10 < size; i10++) {
                z10 |= ((m) this.f2645a.get(i10)).a(arrayList, arrayList2);
            }
            this.f2645a.clear();
            this.f2668x.h().removeCallbacks(this.T);
            return z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q1(int i10) {
        int i11 = 4097;
        if (i10 != 4097) {
            if (i10 != 8194) {
                i11 = 8197;
                if (i10 == 8197) {
                    return 4100;
                }
                if (i10 == 4099) {
                    return 4099;
                }
                if (i10 != 4100) {
                    return 0;
                }
            }
            return i11;
        }
        return 8194;
    }

    private void r() {
        if (!Q0()) {
            return;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    private l0 r0(p pVar) {
        return this.R.j(pVar);
    }

    private void s() {
        this.f2646b = false;
        this.P.clear();
        this.O.clear();
    }

    private void t() {
        boolean z10;
        a0 a0Var = this.f2668x;
        if (a0Var instanceof androidx.lifecycle.m0) {
            z10 = this.f2647c.p().n();
        } else if (a0Var.f() instanceof Activity) {
            z10 = !((Activity) this.f2668x.f()).isChangingConfigurations();
        } else {
            z10 = true;
        }
        if (z10) {
            for (androidx.fragment.app.c cVar : this.f2656l.values()) {
                for (String str : cVar.f2578a) {
                    this.f2647c.p().g(str, false);
                }
            }
        }
    }

    private ViewGroup t0(p pVar) {
        ViewGroup viewGroup = pVar.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (pVar.mContainerId > 0 && this.f2669y.d()) {
            View c10 = this.f2669y.c(pVar.mContainerId);
            if (c10 instanceof ViewGroup) {
                return (ViewGroup) c10;
            }
        }
        return null;
    }

    private Set u() {
        HashSet hashSet = new HashSet();
        for (o0 o0Var : this.f2647c.k()) {
            ViewGroup viewGroup = o0Var.k().mContainer;
            if (viewGroup != null) {
                hashSet.add(y0.v(viewGroup, B0()));
            }
        }
        return hashSet;
    }

    private void w1(p pVar) {
        ViewGroup t02 = t0(pVar);
        if (t02 != null && pVar.getEnterAnim() + pVar.getExitAnim() + pVar.getPopEnterAnim() + pVar.getPopExitAnim() > 0) {
            if (t02.getTag(s0.b.f29228c) == null) {
                t02.setTag(s0.b.f29228c, pVar);
            }
            ((p) t02.getTag(s0.b.f29228c)).setPopDirection(pVar.getPopDirection());
        }
    }

    private void y1() {
        for (o0 o0Var : this.f2647c.k()) {
            c1(o0Var);
        }
    }

    private void z1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new v0("FragmentManager"));
        a0 a0Var = this.f2668x;
        if (a0Var != null) {
            try {
                a0Var.i("  ", null, printWriter, new String[0]);
            } catch (Exception e10) {
                Log.e("FragmentManager", "Failed dumping state", e10);
            }
        } else {
            try {
                X("  ", null, printWriter, new String[0]);
            } catch (Exception e11) {
                Log.e("FragmentManager", "Failed dumping state", e11);
            }
        }
        throw runtimeException;
    }

    void A(Configuration configuration, boolean z10) {
        if (z10 && (this.f2668x instanceof androidx.core.content.c)) {
            z1(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null) {
                pVar.performConfigurationChanged(configuration);
                if (z10) {
                    pVar.mChildFragmentManager.A(configuration, true);
                }
            }
        }
    }

    public p A0() {
        return this.A;
    }

    public void A1(k kVar) {
        this.f2660p.p(kVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B(MenuItem menuItem) {
        if (this.f2667w < 1) {
            return false;
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null && pVar.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0 B0() {
        z0 z0Var = this.D;
        if (z0Var != null) {
            return z0Var;
        }
        p pVar = this.f2670z;
        if (pVar != null) {
            return pVar.mFragmentManager.B0();
        }
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C() {
        this.K = false;
        this.L = false;
        this.R.p(false);
        T(1);
    }

    public c.C0310c C0() {
        return this.S;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D(Menu menu, MenuInflater menuInflater) {
        if (this.f2667w < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z10 = false;
        for (p pVar : this.f2647c.o()) {
            if (pVar != null && N0(pVar) && pVar.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(pVar);
                z10 = true;
            }
        }
        if (this.f2649e != null) {
            for (int i10 = 0; i10 < this.f2649e.size(); i10++) {
                p pVar2 = (p) this.f2649e.get(i10);
                if (arrayList == null || !arrayList.contains(pVar2)) {
                    pVar2.onDestroyOptionsMenu();
                }
            }
        }
        this.f2649e = arrayList;
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E() {
        this.M = true;
        b0(true);
        Y();
        t();
        T(-1);
        a0 a0Var = this.f2668x;
        if (a0Var instanceof androidx.core.content.d) {
            ((androidx.core.content.d) a0Var).removeOnTrimMemoryListener(this.f2663s);
        }
        a0 a0Var2 = this.f2668x;
        if (a0Var2 instanceof androidx.core.content.c) {
            ((androidx.core.content.c) a0Var2).removeOnConfigurationChangedListener(this.f2662r);
        }
        a0 a0Var3 = this.f2668x;
        if (a0Var3 instanceof androidx.core.app.q) {
            ((androidx.core.app.q) a0Var3).removeOnMultiWindowModeChangedListener(this.f2664t);
        }
        a0 a0Var4 = this.f2668x;
        if (a0Var4 instanceof androidx.core.app.r) {
            ((androidx.core.app.r) a0Var4).removeOnPictureInPictureModeChangedListener(this.f2665u);
        }
        a0 a0Var5 = this.f2668x;
        if ((a0Var5 instanceof d0.w) && this.f2670z == null) {
            ((d0.w) a0Var5).removeMenuProvider(this.f2666v);
        }
        this.f2668x = null;
        this.f2669y = null;
        this.f2670z = null;
        if (this.f2651g != null) {
            this.f2654j.remove();
            this.f2651g = null;
        }
        f.c cVar = this.F;
        if (cVar != null) {
            cVar.c();
            this.G.c();
            this.H.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.lifecycle.l0 E0(p pVar) {
        return this.R.m(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F() {
        T(1);
    }

    void F0() {
        b0(true);
        if (V && this.f2652h != null) {
            if (!this.f2659o.isEmpty()) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(o0(this.f2652h));
                Iterator it = this.f2659o.iterator();
                while (it.hasNext()) {
                    android.support.v4.media.session.b.a(it.next());
                    Iterator it2 = linkedHashSet.iterator();
                    if (it2.hasNext()) {
                        p pVar = (p) it2.next();
                        throw null;
                    }
                }
            }
            Iterator it3 = this.f2652h.f2804c.iterator();
            while (it3.hasNext()) {
                p pVar2 = ((q0.a) it3.next()).f2822b;
                if (pVar2 != null) {
                    pVar2.mTransitioning = false;
                }
            }
            for (y0 y0Var : v(new ArrayList(Collections.singletonList(this.f2652h)), 0, 1)) {
                y0Var.f();
            }
            this.f2652h = null;
            B1();
            if (J0(3)) {
                Log.d("FragmentManager", "Op is being set to null");
                Log.d("FragmentManager", "OnBackPressedCallback enabled=" + this.f2654j.isEnabled() + " for  FragmentManager " + this);
            }
        } else if (this.f2654j.isEnabled()) {
            if (J0(3)) {
                Log.d("FragmentManager", "Calling popBackStackImmediate via onBackPressed callback");
            }
            e1();
        } else {
            if (J0(3)) {
                Log.d("FragmentManager", "Calling onBackPressed via onBackPressed callback");
            }
            this.f2651g.k();
        }
    }

    void G(boolean z10) {
        if (z10 && (this.f2668x instanceof androidx.core.content.d)) {
            z1(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null) {
                pVar.performLowMemory();
                if (z10) {
                    pVar.mChildFragmentManager.G(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G0(p pVar) {
        if (J0(2)) {
            Log.v("FragmentManager", "hide: " + pVar);
        }
        if (!pVar.mHidden) {
            pVar.mHidden = true;
            pVar.mHiddenChanged = true ^ pVar.mHiddenChanged;
            w1(pVar);
        }
    }

    void H(boolean z10, boolean z11) {
        if (z11 && (this.f2668x instanceof androidx.core.app.q)) {
            z1(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null) {
                pVar.performMultiWindowModeChanged(z10);
                if (z11) {
                    pVar.mChildFragmentManager.H(z10, true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H0(p pVar) {
        if (pVar.mAdded && K0(pVar)) {
            this.J = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(p pVar) {
        Iterator it = this.f2661q.iterator();
        while (it.hasNext()) {
            ((m0) it.next()).a(this, pVar);
        }
    }

    public boolean I0() {
        return this.M;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J() {
        for (p pVar : this.f2647c.l()) {
            if (pVar != null) {
                pVar.onHiddenChanged(pVar.isHidden());
                pVar.mChildFragmentManager.J();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean K(MenuItem menuItem) {
        if (this.f2667w < 1) {
            return false;
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null && pVar.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(Menu menu) {
        if (this.f2667w < 1) {
            return;
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null) {
                pVar.performOptionsMenuClosed(menu);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean M0(p pVar) {
        if (pVar == null) {
            return false;
        }
        return pVar.isHidden();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N() {
        T(5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean N0(p pVar) {
        if (pVar == null) {
            return true;
        }
        return pVar.isMenuVisible();
    }

    void O(boolean z10, boolean z11) {
        if (z11 && (this.f2668x instanceof androidx.core.app.r)) {
            z1(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null) {
                pVar.performPictureInPictureModeChanged(z10);
                if (z11) {
                    pVar.mChildFragmentManager.O(z10, true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean O0(p pVar) {
        if (pVar == null) {
            return true;
        }
        i0 i0Var = pVar.mFragmentManager;
        if (pVar.equals(i0Var.A0()) && O0(i0Var.f2670z)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean P(Menu menu) {
        boolean z10 = false;
        if (this.f2667w < 1) {
            return false;
        }
        for (p pVar : this.f2647c.o()) {
            if (pVar != null && N0(pVar) && pVar.performPrepareOptionsMenu(menu)) {
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean P0(int i10) {
        if (this.f2667w >= i10) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q() {
        B1();
        M(this.A);
    }

    public boolean Q0() {
        if (!this.K && !this.L) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R() {
        this.K = false;
        this.L = false;
        this.R.p(false);
        T(7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void S() {
        this.K = false;
        this.L = false;
        this.R.p(false);
        T(5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U() {
        this.L = true;
        this.R.p(true);
        T(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V() {
        T(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W0(p pVar, String[] strArr, int i10) {
        if (this.H != null) {
            this.I.addLast(new l(pVar.mWho, i10));
            this.H.a(strArr);
            return;
        }
        this.f2668x.l(pVar, strArr, i10);
    }

    public void X(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        String str2 = str + "    ";
        this.f2647c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList arrayList = this.f2649e;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size; i10++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(((p) this.f2649e.get(i10)).toString());
            }
        }
        int size2 = this.f2648d.size();
        if (size2 > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size2; i11++) {
                androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f2648d.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.p(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f2655k.get());
        synchronized (this.f2645a) {
            int size3 = this.f2645a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i12 = 0; i12 < size3; i12++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i12);
                    printWriter.print(": ");
                    printWriter.println((m) this.f2645a.get(i12));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f2668x);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f2669y);
        if (this.f2670z != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f2670z);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f2667w);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.K);
        printWriter.print(" mStopped=");
        printWriter.print(this.L);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.M);
        if (this.J) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.J);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X0(p pVar, Intent intent, int i10, Bundle bundle) {
        if (this.F != null) {
            this.I.addLast(new l(pVar.mWho, i10));
            if (bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            this.F.a(intent);
            return;
        }
        this.f2668x.n(pVar, intent, i10, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y0(p pVar, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        Intent intent2;
        if (this.G != null) {
            if (bundle != null) {
                if (intent == null) {
                    intent2 = new Intent();
                    intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
                } else {
                    intent2 = intent;
                }
                if (J0(2)) {
                    Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + pVar);
                }
                intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            } else {
                intent2 = intent;
            }
            f.g a10 = new g.a(intentSender).b(intent2).c(i12, i11).a();
            this.I.addLast(new l(pVar.mWho, i10));
            if (J0(2)) {
                Log.v("FragmentManager", "Fragment " + pVar + "is launching an IntentSender for result ");
            }
            this.G.a(a10);
            return;
        }
        this.f2668x.o(pVar, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(m mVar, boolean z10) {
        if (!z10) {
            if (this.f2668x == null) {
                if (this.M) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            r();
        }
        synchronized (this.f2645a) {
            if (this.f2668x == null) {
                if (z10) {
                    return;
                }
                throw new IllegalStateException("Activity has been destroyed");
            }
            this.f2645a.add(mVar);
            s1();
        }
    }

    void Z0(int i10, boolean z10) {
        a0 a0Var;
        if (this.f2668x == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (!z10 && i10 == this.f2667w) {
            return;
        }
        this.f2667w = i10;
        this.f2647c.t();
        y1();
        if (this.J && (a0Var = this.f2668x) != null && this.f2667w == 7) {
            a0Var.p();
            this.J = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a1() {
        if (this.f2668x == null) {
            return;
        }
        this.K = false;
        this.L = false;
        this.R.p(false);
        for (p pVar : this.f2647c.o()) {
            if (pVar != null) {
                pVar.noteStateNotSaved();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b0(boolean z10) {
        a0(z10);
        boolean z11 = false;
        while (p0(this.O, this.P)) {
            z11 = true;
            this.f2646b = true;
            try {
                m1(this.O, this.P);
            } finally {
                s();
            }
        }
        B1();
        W();
        this.f2647c.b();
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b1(x xVar) {
        View view;
        for (o0 o0Var : this.f2647c.k()) {
            p k10 = o0Var.k();
            if (k10.mContainerId == xVar.getId() && (view = k10.mView) != null && view.getParent() == null) {
                k10.mContainer = xVar;
                o0Var.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c0(m mVar, boolean z10) {
        if (z10 && (this.f2668x == null || this.M)) {
            return;
        }
        a0(z10);
        if (mVar.a(this.O, this.P)) {
            this.f2646b = true;
            try {
                m1(this.O, this.P);
            } finally {
                s();
            }
        }
        B1();
        W();
        this.f2647c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c1(o0 o0Var) {
        p k10 = o0Var.k();
        if (k10.mDeferStart) {
            if (this.f2646b) {
                this.N = true;
                return;
            }
            k10.mDeferStart = false;
            o0Var.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d1(int i10, int i11, boolean z10) {
        if (i10 >= 0) {
            Z(new n(null, i10, i11), z10);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    public boolean e1() {
        return g1(null, -1, 0);
    }

    public boolean f0() {
        boolean b02 = b0(true);
        n0();
        return b02;
    }

    public boolean f1(int i10, int i11) {
        if (i10 >= 0) {
            return g1(null, i10, i11);
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p g0(String str) {
        return this.f2647c.f(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(androidx.fragment.app.a aVar) {
        this.f2648d.add(aVar);
    }

    boolean h1(ArrayList arrayList, ArrayList arrayList2, String str, int i10, int i11) {
        boolean z10;
        if ((i11 & 1) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int h02 = h0(str, i10, z10);
        if (h02 < 0) {
            return false;
        }
        for (int size = this.f2648d.size() - 1; size >= h02; size--) {
            arrayList.add((androidx.fragment.app.a) this.f2648d.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0 i(p pVar) {
        String str = pVar.mPreviousWho;
        if (str != null) {
            t0.c.f(pVar, str);
        }
        if (J0(2)) {
            Log.v("FragmentManager", "add: " + pVar);
        }
        o0 w10 = w(pVar);
        pVar.mFragmentManager = this;
        this.f2647c.r(w10);
        if (!pVar.mDetached) {
            this.f2647c.a(pVar);
            pVar.mRemoving = false;
            if (pVar.mView == null) {
                pVar.mHiddenChanged = false;
            }
            if (K0(pVar)) {
                this.J = true;
            }
        }
        return w10;
    }

    public p i0(int i10) {
        return this.f2647c.g(i10);
    }

    boolean i1(ArrayList arrayList, ArrayList arrayList2) {
        ArrayList arrayList3 = this.f2648d;
        androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList3.get(arrayList3.size() - 1);
        this.f2652h = aVar;
        Iterator it = aVar.f2804c.iterator();
        while (it.hasNext()) {
            p pVar = ((q0.a) it.next()).f2822b;
            if (pVar != null) {
                pVar.mTransitioning = true;
            }
        }
        return h1(arrayList, arrayList2, null, -1, 0);
    }

    public void j(m0 m0Var) {
        this.f2661q.add(m0Var);
    }

    public p j0(String str) {
        return this.f2647c.h(str);
    }

    void j1() {
        Z(new o(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(p pVar) {
        this.R.e(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p k0(String str) {
        return this.f2647c.i(str);
    }

    public void k1(k kVar, boolean z10) {
        this.f2660p.o(kVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        return this.f2655k.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l1(p pVar) {
        if (J0(2)) {
            Log.v("FragmentManager", "remove: " + pVar + " nesting=" + pVar.mBackStackNesting);
        }
        boolean z10 = !pVar.isInBackStack();
        if (!pVar.mDetached || z10) {
            this.f2647c.u(pVar);
            if (K0(pVar)) {
                this.J = true;
            }
            pVar.mRemoving = true;
            w1(pVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(a0 a0Var, w wVar, p pVar) {
        String str;
        if (this.f2668x == null) {
            this.f2668x = a0Var;
            this.f2669y = wVar;
            this.f2670z = pVar;
            if (pVar != null) {
                j(new g(pVar));
            } else if (a0Var instanceof m0) {
                j((m0) a0Var);
            }
            if (this.f2670z != null) {
                B1();
            }
            if (a0Var instanceof androidx.activity.y) {
                androidx.activity.y yVar = (androidx.activity.y) a0Var;
                androidx.activity.w onBackPressedDispatcher = yVar.getOnBackPressedDispatcher();
                this.f2651g = onBackPressedDispatcher;
                androidx.lifecycle.m mVar = yVar;
                if (pVar != null) {
                    mVar = pVar;
                }
                onBackPressedDispatcher.h(mVar, this.f2654j);
            }
            if (pVar != null) {
                this.R = pVar.mFragmentManager.r0(pVar);
            } else if (a0Var instanceof androidx.lifecycle.m0) {
                this.R = l0.k(((androidx.lifecycle.m0) a0Var).getViewModelStore());
            } else {
                this.R = new l0(false);
            }
            this.R.p(Q0());
            this.f2647c.A(this.R);
            a0 a0Var2 = this.f2668x;
            if ((a0Var2 instanceof h1.f) && pVar == null) {
                h1.d savedStateRegistry = ((h1.f) a0Var2).getSavedStateRegistry();
                savedStateRegistry.h("android:support:fragments", new d.c() { // from class: androidx.fragment.app.h0
                    @Override // h1.d.c
                    public final Bundle a() {
                        Bundle R0;
                        R0 = i0.this.R0();
                        return R0;
                    }
                });
                Bundle b10 = savedStateRegistry.b("android:support:fragments");
                if (b10 != null) {
                    p1(b10);
                }
            }
            a0 a0Var3 = this.f2668x;
            if (a0Var3 instanceof f.f) {
                f.e activityResultRegistry = ((f.f) a0Var3).getActivityResultRegistry();
                if (pVar != null) {
                    str = pVar.mWho + ":";
                } else {
                    str = "";
                }
                String str2 = "FragmentManager:" + str;
                this.F = activityResultRegistry.m(str2 + "StartActivityForResult", new g.h(), new h());
                this.G = activityResultRegistry.m(str2 + "StartIntentSenderForResult", new j(), new i());
                this.H = activityResultRegistry.m(str2 + "RequestPermissions", new g.g(), new a());
            }
            a0 a0Var4 = this.f2668x;
            if (a0Var4 instanceof androidx.core.content.c) {
                ((androidx.core.content.c) a0Var4).addOnConfigurationChangedListener(this.f2662r);
            }
            a0 a0Var5 = this.f2668x;
            if (a0Var5 instanceof androidx.core.content.d) {
                ((androidx.core.content.d) a0Var5).addOnTrimMemoryListener(this.f2663s);
            }
            a0 a0Var6 = this.f2668x;
            if (a0Var6 instanceof androidx.core.app.q) {
                ((androidx.core.app.q) a0Var6).addOnMultiWindowModeChangedListener(this.f2664t);
            }
            a0 a0Var7 = this.f2668x;
            if (a0Var7 instanceof androidx.core.app.r) {
                ((androidx.core.app.r) a0Var7).addOnPictureInPictureModeChangedListener(this.f2665u);
            }
            a0 a0Var8 = this.f2668x;
            if ((a0Var8 instanceof d0.w) && pVar == null) {
                ((d0.w) a0Var8).addMenuProvider(this.f2666v);
                return;
            }
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(p pVar) {
        if (J0(2)) {
            Log.v("FragmentManager", "attach: " + pVar);
        }
        if (pVar.mDetached) {
            pVar.mDetached = false;
            if (!pVar.mAdded) {
                this.f2647c.a(pVar);
                if (J0(2)) {
                    Log.v("FragmentManager", "add from attach: " + pVar);
                }
                if (K0(pVar)) {
                    this.J = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n1(p pVar) {
        this.R.o(pVar);
    }

    public q0 o() {
        return new androidx.fragment.app.a(this);
    }

    Set o0(androidx.fragment.app.a aVar) {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < aVar.f2804c.size(); i10++) {
            p pVar = ((q0.a) aVar.f2804c.get(i10)).f2822b;
            if (pVar != null && aVar.f2810i) {
                hashSet.add(pVar);
            }
        }
        return hashSet;
    }

    void p() {
        androidx.fragment.app.a aVar = this.f2652h;
        if (aVar != null) {
            aVar.f2553u = false;
            aVar.f();
            f0();
            Iterator it = this.f2659o.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p1(Parcelable parcelable) {
        o0 o0Var;
        Bundle bundle;
        Bundle bundle2;
        if (parcelable == null) {
            return;
        }
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.f2668x.f().getClassLoader());
                this.f2657m.put(str.substring(7), bundle2);
            }
        }
        HashMap hashMap = new HashMap();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.f2668x.f().getClassLoader());
                hashMap.put(str2.substring(9), bundle);
            }
        }
        this.f2647c.x(hashMap);
        k0 k0Var = (k0) bundle3.getParcelable("state");
        if (k0Var == null) {
            return;
        }
        this.f2647c.v();
        Iterator it = k0Var.f2694a.iterator();
        while (it.hasNext()) {
            Bundle B = this.f2647c.B((String) it.next(), null);
            if (B != null) {
                p i10 = this.R.i(((n0) B.getParcelable("state")).f2736b);
                if (i10 != null) {
                    if (J0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + i10);
                    }
                    o0Var = new o0(this.f2660p, this.f2647c, i10, B);
                } else {
                    o0Var = new o0(this.f2660p, this.f2647c, this.f2668x.f().getClassLoader(), u0(), B);
                }
                p k10 = o0Var.k();
                k10.mSavedFragmentState = B;
                k10.mFragmentManager = this;
                if (J0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + k10.mWho + "): " + k10);
                }
                o0Var.o(this.f2668x.f().getClassLoader());
                this.f2647c.r(o0Var);
                o0Var.s(this.f2667w);
            }
        }
        for (p pVar : this.R.l()) {
            if (!this.f2647c.c(pVar.mWho)) {
                if (J0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + pVar + " that was not found in the set of active Fragments " + k0Var.f2694a);
                }
                this.R.o(pVar);
                pVar.mFragmentManager = this;
                o0 o0Var2 = new o0(this.f2660p, this.f2647c, pVar);
                o0Var2.s(1);
                o0Var2.m();
                pVar.mRemoving = true;
                o0Var2.m();
            }
        }
        this.f2647c.w(k0Var.f2695b);
        if (k0Var.f2696c != null) {
            this.f2648d = new ArrayList(k0Var.f2696c.length);
            int i11 = 0;
            while (true) {
                androidx.fragment.app.b[] bVarArr = k0Var.f2696c;
                if (i11 >= bVarArr.length) {
                    break;
                }
                androidx.fragment.app.a b10 = bVarArr[i11].b(this);
                if (J0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i11 + " (index " + b10.f2554v + "): " + b10);
                    PrintWriter printWriter = new PrintWriter(new v0("FragmentManager"));
                    b10.q("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2648d.add(b10);
                i11++;
            }
        } else {
            this.f2648d = new ArrayList();
        }
        this.f2655k.set(k0Var.f2697d);
        String str3 = k0Var.f2698e;
        if (str3 != null) {
            p g02 = g0(str3);
            this.A = g02;
            M(g02);
        }
        ArrayList arrayList = k0Var.f2699f;
        if (arrayList != null) {
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                this.f2656l.put((String) arrayList.get(i12), (androidx.fragment.app.c) k0Var.f2700g.get(i12));
            }
        }
        this.I = new ArrayDeque(k0Var.f2701h);
    }

    boolean q() {
        boolean z10 = false;
        for (p pVar : this.f2647c.l()) {
            if (pVar != null) {
                z10 = K0(pVar);
                continue;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    public int q0() {
        int i10;
        int size = this.f2648d.size();
        if (this.f2652h != null) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        return size + i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r1 */
    public Bundle R0() {
        androidx.fragment.app.b[] bVarArr;
        Bundle bundle = new Bundle();
        n0();
        Y();
        b0(true);
        this.K = true;
        this.R.p(true);
        ArrayList y10 = this.f2647c.y();
        HashMap m10 = this.f2647c.m();
        if (m10.isEmpty()) {
            if (J0(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
        } else {
            ArrayList z10 = this.f2647c.z();
            int size = this.f2648d.size();
            if (size > 0) {
                bVarArr = new androidx.fragment.app.b[size];
                for (int i10 = 0; i10 < size; i10++) {
                    bVarArr[i10] = new androidx.fragment.app.b((androidx.fragment.app.a) this.f2648d.get(i10));
                    if (J0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i10 + ": " + this.f2648d.get(i10));
                    }
                }
            } else {
                bVarArr = null;
            }
            k0 k0Var = new k0();
            k0Var.f2694a = y10;
            k0Var.f2695b = z10;
            k0Var.f2696c = bVarArr;
            k0Var.f2697d = this.f2655k.get();
            p pVar = this.A;
            if (pVar != null) {
                k0Var.f2698e = pVar.mWho;
            }
            k0Var.f2699f.addAll(this.f2656l.keySet());
            k0Var.f2700g.addAll(this.f2656l.values());
            k0Var.f2701h = new ArrayList(this.I);
            bundle.putParcelable("state", k0Var);
            for (String str : this.f2657m.keySet()) {
                bundle.putBundle("result_" + str, (Bundle) this.f2657m.get(str));
            }
            for (String str2 : m10.keySet()) {
                bundle.putBundle("fragment_" + str2, (Bundle) m10.get(str2));
            }
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w s0() {
        return this.f2669y;
    }

    void s1() {
        synchronized (this.f2645a) {
            boolean z10 = true;
            if (this.f2645a.size() != 1) {
                z10 = false;
            }
            if (z10) {
                this.f2668x.h().removeCallbacks(this.T);
                this.f2668x.h().post(this.T);
                B1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t1(p pVar, boolean z10) {
        ViewGroup t02 = t0(pVar);
        if (t02 != null && (t02 instanceof x)) {
            ((x) t02).setDrawDisappearingViewsLast(!z10);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        p pVar = this.f2670z;
        if (pVar != null) {
            sb2.append(pVar.getClass().getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(this.f2670z)));
            sb2.append("}");
        } else {
            a0 a0Var = this.f2668x;
            if (a0Var != null) {
                sb2.append(a0Var.getClass().getSimpleName());
                sb2.append("{");
                sb2.append(Integer.toHexString(System.identityHashCode(this.f2668x)));
                sb2.append("}");
            } else {
                sb2.append("null");
            }
        }
        sb2.append("}}");
        return sb2.toString();
    }

    public z u0() {
        z zVar = this.B;
        if (zVar != null) {
            return zVar;
        }
        p pVar = this.f2670z;
        if (pVar != null) {
            return pVar.mFragmentManager.u0();
        }
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u1(p pVar, i.b bVar) {
        if (pVar.equals(g0(pVar.mWho)) && (pVar.mHost == null || pVar.mFragmentManager == this)) {
            pVar.mMaxState = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + pVar + " is not an active fragment of FragmentManager " + this);
    }

    Set v(ArrayList arrayList, int i10, int i11) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i10 < i11) {
            Iterator it = ((androidx.fragment.app.a) arrayList.get(i10)).f2804c.iterator();
            while (it.hasNext()) {
                p pVar = ((q0.a) it.next()).f2822b;
                if (pVar != null && (viewGroup = pVar.mContainer) != null) {
                    hashSet.add(y0.u(viewGroup, this));
                }
            }
            i10++;
        }
        return hashSet;
    }

    public List v0() {
        return this.f2647c.o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v1(p pVar) {
        if (pVar != null && (!pVar.equals(g0(pVar.mWho)) || (pVar.mHost != null && pVar.mFragmentManager != this))) {
            throw new IllegalArgumentException("Fragment " + pVar + " is not an active fragment of FragmentManager " + this);
        }
        p pVar2 = this.A;
        this.A = pVar;
        M(pVar2);
        M(this.A);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0 w(p pVar) {
        o0 n10 = this.f2647c.n(pVar.mWho);
        if (n10 != null) {
            return n10;
        }
        o0 o0Var = new o0(this.f2660p, this.f2647c, pVar);
        o0Var.o(this.f2668x.f().getClassLoader());
        o0Var.s(this.f2667w);
        return o0Var;
    }

    public a0 w0() {
        return this.f2668x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(p pVar) {
        if (J0(2)) {
            Log.v("FragmentManager", "detach: " + pVar);
        }
        if (!pVar.mDetached) {
            pVar.mDetached = true;
            if (pVar.mAdded) {
                if (J0(2)) {
                    Log.v("FragmentManager", "remove from detach: " + pVar);
                }
                this.f2647c.u(pVar);
                if (K0(pVar)) {
                    this.J = true;
                }
                w1(pVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater.Factory2 x0() {
        return this.f2650f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x1(p pVar) {
        if (J0(2)) {
            Log.v("FragmentManager", "show: " + pVar);
        }
        if (pVar.mHidden) {
            pVar.mHidden = false;
            pVar.mHiddenChanged = !pVar.mHiddenChanged;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y() {
        this.K = false;
        this.L = false;
        this.R.p(false);
        T(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0 y0() {
        return this.f2660p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z() {
        this.K = false;
        this.L = false;
        this.R.p(false);
        T(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p z0() {
        return this.f2670z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class l implements Parcelable {
        public static final Parcelable.Creator<l> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        String f2681a;

        /* renamed from: b  reason: collision with root package name */
        int f2682b;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public l createFromParcel(Parcel parcel) {
                return new l(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public l[] newArray(int i10) {
                return new l[i10];
            }
        }

        l(String str, int i10) {
            this.f2681a = str;
            this.f2682b = i10;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f2681a);
            parcel.writeInt(this.f2682b);
        }

        l(Parcel parcel) {
            this.f2681a = parcel.readString();
            this.f2682b = parcel.readInt();
        }
    }
}
