package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.i0;
import androidx.fragment.app.q0;
import java.io.PrintWriter;
import java.util.ArrayList;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
final class a extends q0 implements i0.m {

    /* renamed from: t  reason: collision with root package name */
    final i0 f2552t;

    /* renamed from: u  reason: collision with root package name */
    boolean f2553u;

    /* renamed from: v  reason: collision with root package name */
    int f2554v;

    /* renamed from: w  reason: collision with root package name */
    boolean f2555w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(androidx.fragment.app.i0 r3) {
        /*
            r2 = this;
            androidx.fragment.app.z r0 = r3.u0()
            androidx.fragment.app.a0 r1 = r3.w0()
            if (r1 == 0) goto L17
            androidx.fragment.app.a0 r1 = r3.w0()
            android.content.Context r1 = r1.f()
            java.lang.ClassLoader r1 = r1.getClassLoader()
            goto L18
        L17:
            r1 = 0
        L18:
            r2.<init>(r0, r1)
            r0 = -1
            r2.f2554v = r0
            r0 = 0
            r2.f2555w = r0
            r2.f2552t = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.a.<init>(androidx.fragment.app.i0):void");
    }

    @Override // androidx.fragment.app.i0.m
    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (i0.J0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f2810i) {
            this.f2552t.h(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.q0
    public int f() {
        return o(false);
    }

    @Override // androidx.fragment.app.q0
    public int g() {
        return o(true);
    }

    @Override // androidx.fragment.app.q0
    public void h() {
        j();
        this.f2552t.c0(this, false);
    }

    @Override // androidx.fragment.app.q0
    public void i() {
        j();
        this.f2552t.c0(this, true);
    }

    @Override // androidx.fragment.app.q0
    void k(int i10, p pVar, String str, int i11) {
        super.k(i10, pVar, str, i11);
        pVar.mFragmentManager = this.f2552t;
    }

    @Override // androidx.fragment.app.q0
    public q0 l(p pVar) {
        i0 i0Var = pVar.mFragmentManager;
        if (i0Var != null && i0Var != this.f2552t) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + pVar.toString() + " is already attached to a FragmentManager.");
        }
        return super.l(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(int i10) {
        q0.a aVar;
        if (!this.f2810i) {
            return;
        }
        if (i0.J0(2)) {
            Log.v("FragmentManager", "Bump nesting in " + this + " by " + i10);
        }
        int size = this.f2804c.size();
        for (int i11 = 0; i11 < size; i11++) {
            p pVar = ((q0.a) this.f2804c.get(i11)).f2822b;
            if (pVar != null) {
                pVar.mBackStackNesting += i10;
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Bump nesting of " + aVar.f2822b + " to " + aVar.f2822b.mBackStackNesting);
                }
            }
        }
    }

    int o(boolean z10) {
        if (!this.f2553u) {
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new v0("FragmentManager"));
                p("  ", printWriter);
                printWriter.close();
            }
            this.f2553u = true;
            if (this.f2810i) {
                this.f2554v = this.f2552t.l();
            } else {
                this.f2554v = -1;
            }
            this.f2552t.Z(this, z10);
            return this.f2554v;
        }
        throw new IllegalStateException("commit already called");
    }

    public void p(String str, PrintWriter printWriter) {
        q(str, printWriter, true);
    }

    public void q(String str, PrintWriter printWriter, boolean z10) {
        String str2;
        if (z10) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2812k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f2554v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f2553u);
            if (this.f2809h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2809h));
            }
            if (this.f2805d != 0 || this.f2806e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2805d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2806e));
            }
            if (this.f2807f != 0 || this.f2808g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2807f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2808g));
            }
            if (this.f2813l != 0 || this.f2814m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2813l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2814m);
            }
            if (this.f2815n != 0 || this.f2816o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2815n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f2816o);
            }
        }
        if (!this.f2804c.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f2804c.size();
            for (int i10 = 0; i10 < size; i10++) {
                q0.a aVar = (q0.a) this.f2804c.get(i10);
                switch (aVar.f2821a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + aVar.f2821a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(StringUtils.SPACE);
                printWriter.println(aVar.f2822b);
                if (z10) {
                    if (aVar.f2824d != 0 || aVar.f2825e != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f2824d));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f2825e));
                    }
                    if (aVar.f2826f != 0 || aVar.f2827g != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f2826f));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f2827g));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        int size = this.f2804c.size();
        for (int i10 = 0; i10 < size; i10++) {
            q0.a aVar = (q0.a) this.f2804c.get(i10);
            p pVar = aVar.f2822b;
            if (pVar != null) {
                pVar.mBeingSaved = this.f2555w;
                pVar.setPopDirection(false);
                pVar.setNextTransition(this.f2809h);
                pVar.setSharedElementNames(this.f2817p, this.f2818q);
            }
            switch (aVar.f2821a) {
                case 1:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.t1(pVar, false);
                    this.f2552t.i(pVar);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2821a);
                case 3:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.l1(pVar);
                    break;
                case 4:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.G0(pVar);
                    break;
                case 5:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.t1(pVar, false);
                    this.f2552t.x1(pVar);
                    break;
                case 6:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.x(pVar);
                    break;
                case 7:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.t1(pVar, false);
                    this.f2552t.n(pVar);
                    break;
                case 8:
                    this.f2552t.v1(pVar);
                    break;
                case 9:
                    this.f2552t.v1(null);
                    break;
                case 10:
                    this.f2552t.u1(pVar, aVar.f2829i);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        for (int size = this.f2804c.size() - 1; size >= 0; size--) {
            q0.a aVar = (q0.a) this.f2804c.get(size);
            p pVar = aVar.f2822b;
            if (pVar != null) {
                pVar.mBeingSaved = this.f2555w;
                pVar.setPopDirection(true);
                pVar.setNextTransition(i0.q1(this.f2809h));
                pVar.setSharedElementNames(this.f2818q, this.f2817p);
            }
            switch (aVar.f2821a) {
                case 1:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.t1(pVar, true);
                    this.f2552t.l1(pVar);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2821a);
                case 3:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.i(pVar);
                    break;
                case 4:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.x1(pVar);
                    break;
                case 5:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.t1(pVar, true);
                    this.f2552t.G0(pVar);
                    break;
                case 6:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.n(pVar);
                    break;
                case 7:
                    pVar.setAnimations(aVar.f2824d, aVar.f2825e, aVar.f2826f, aVar.f2827g);
                    this.f2552t.t1(pVar, true);
                    this.f2552t.x(pVar);
                    break;
                case 8:
                    this.f2552t.v1(null);
                    break;
                case 9:
                    this.f2552t.v1(pVar);
                    break;
                case 10:
                    this.f2552t.u1(pVar, aVar.f2828h);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p t(ArrayList arrayList, p pVar) {
        p pVar2 = pVar;
        int i10 = 0;
        while (i10 < this.f2804c.size()) {
            q0.a aVar = (q0.a) this.f2804c.get(i10);
            int i11 = aVar.f2821a;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3 && i11 != 6) {
                        if (i11 != 7) {
                            if (i11 == 8) {
                                this.f2804c.add(i10, new q0.a(9, pVar2, true));
                                aVar.f2823c = true;
                                i10++;
                                pVar2 = aVar.f2822b;
                            }
                        }
                    } else {
                        arrayList.remove(aVar.f2822b);
                        p pVar3 = aVar.f2822b;
                        if (pVar3 == pVar2) {
                            this.f2804c.add(i10, new q0.a(9, pVar3));
                            i10++;
                            pVar2 = null;
                        }
                    }
                } else {
                    p pVar4 = aVar.f2822b;
                    int i12 = pVar4.mContainerId;
                    boolean z10 = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        p pVar5 = (p) arrayList.get(size);
                        if (pVar5.mContainerId == i12) {
                            if (pVar5 == pVar4) {
                                z10 = true;
                            } else {
                                if (pVar5 == pVar2) {
                                    this.f2804c.add(i10, new q0.a(9, pVar5, true));
                                    i10++;
                                    pVar2 = null;
                                }
                                q0.a aVar2 = new q0.a(3, pVar5, true);
                                aVar2.f2824d = aVar.f2824d;
                                aVar2.f2826f = aVar.f2826f;
                                aVar2.f2825e = aVar.f2825e;
                                aVar2.f2827g = aVar.f2827g;
                                this.f2804c.add(i10, aVar2);
                                arrayList.remove(pVar5);
                                i10++;
                            }
                        }
                    }
                    if (z10) {
                        this.f2804c.remove(i10);
                        i10--;
                    } else {
                        aVar.f2821a = 1;
                        aVar.f2823c = true;
                        arrayList.add(pVar4);
                    }
                }
                i10++;
            }
            arrayList.add(aVar.f2822b);
            i10++;
        }
        return pVar2;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("BackStackEntry{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f2554v >= 0) {
            sb2.append(" #");
            sb2.append(this.f2554v);
        }
        if (this.f2812k != null) {
            sb2.append(StringUtils.SPACE);
            sb2.append(this.f2812k);
        }
        sb2.append("}");
        return sb2.toString();
    }

    public String u() {
        return this.f2812k;
    }

    public void v() {
        if (this.f2820s != null) {
            for (int i10 = 0; i10 < this.f2820s.size(); i10++) {
                ((Runnable) this.f2820s.get(i10)).run();
            }
            this.f2820s = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p w(ArrayList arrayList, p pVar) {
        for (int size = this.f2804c.size() - 1; size >= 0; size--) {
            q0.a aVar = (q0.a) this.f2804c.get(size);
            int i10 = aVar.f2821a;
            if (i10 != 1) {
                if (i10 != 3) {
                    switch (i10) {
                        case 8:
                            pVar = null;
                            break;
                        case 9:
                            pVar = aVar.f2822b;
                            break;
                        case 10:
                            aVar.f2829i = aVar.f2828h;
                            break;
                    }
                }
                arrayList.add(aVar.f2822b);
            }
            arrayList.remove(aVar.f2822b);
        }
        return pVar;
    }
}
