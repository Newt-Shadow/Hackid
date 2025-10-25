package l1;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import l1.l;
/* loaded from: classes.dex */
public class p extends l {
    int K;
    private ArrayList I = new ArrayList();
    private boolean J = true;
    boolean L = false;
    private int M = 0;

    /* loaded from: classes.dex */
    class a extends m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f25155a;

        a(l lVar) {
            this.f25155a = lVar;
        }

        @Override // l1.l.f
        public void e(l lVar) {
            this.f25155a.W();
            lVar.S(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends m {

        /* renamed from: a  reason: collision with root package name */
        p f25157a;

        b(p pVar) {
            this.f25157a = pVar;
        }

        @Override // l1.m, l1.l.f
        public void a(l lVar) {
            p pVar = this.f25157a;
            if (!pVar.L) {
                pVar.d0();
                this.f25157a.L = true;
            }
        }

        @Override // l1.l.f
        public void e(l lVar) {
            p pVar = this.f25157a;
            int i10 = pVar.K - 1;
            pVar.K = i10;
            if (i10 == 0) {
                pVar.L = false;
                pVar.r();
            }
            lVar.S(this);
        }
    }

    private void i0(l lVar) {
        this.I.add(lVar);
        lVar.f25112r = this;
    }

    private void u0() {
        b bVar = new b(this);
        Iterator it = this.I.iterator();
        while (it.hasNext()) {
            ((l) it.next()).a(bVar);
        }
        this.K = this.I.size();
    }

    @Override // l1.l
    public void Q(View view) {
        super.Q(view);
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((l) this.I.get(i10)).Q(view);
        }
    }

    @Override // l1.l
    public void U(View view) {
        super.U(view);
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((l) this.I.get(i10)).U(view);
        }
    }

    @Override // l1.l
    protected void W() {
        if (this.I.isEmpty()) {
            d0();
            r();
            return;
        }
        u0();
        if (!this.J) {
            for (int i10 = 1; i10 < this.I.size(); i10++) {
                ((l) this.I.get(i10 - 1)).a(new a((l) this.I.get(i10)));
            }
            l lVar = (l) this.I.get(0);
            if (lVar != null) {
                lVar.W();
                return;
            }
            return;
        }
        Iterator it = this.I.iterator();
        while (it.hasNext()) {
            ((l) it.next()).W();
        }
    }

    @Override // l1.l
    public void Y(l.e eVar) {
        super.Y(eVar);
        this.M |= 8;
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((l) this.I.get(i10)).Y(eVar);
        }
    }

    @Override // l1.l
    public void a0(g gVar) {
        super.a0(gVar);
        this.M |= 4;
        if (this.I != null) {
            for (int i10 = 0; i10 < this.I.size(); i10++) {
                ((l) this.I.get(i10)).a0(gVar);
            }
        }
    }

    @Override // l1.l
    public void b0(o oVar) {
        super.b0(oVar);
        this.M |= 2;
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((l) this.I.get(i10)).b0(oVar);
        }
    }

    @Override // l1.l
    String e0(String str) {
        String e02 = super.e0(str);
        for (int i10 = 0; i10 < this.I.size(); i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e02);
            sb2.append("\n");
            sb2.append(((l) this.I.get(i10)).e0(str + "  "));
            e02 = sb2.toString();
        }
        return e02;
    }

    @Override // l1.l
    protected void f() {
        super.f();
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((l) this.I.get(i10)).f();
        }
    }

    @Override // l1.l
    /* renamed from: f0 */
    public p a(l.f fVar) {
        return (p) super.a(fVar);
    }

    @Override // l1.l
    /* renamed from: g0 */
    public p b(View view) {
        for (int i10 = 0; i10 < this.I.size(); i10++) {
            ((l) this.I.get(i10)).b(view);
        }
        return (p) super.b(view);
    }

    public p h0(l lVar) {
        i0(lVar);
        long j10 = this.f25097c;
        if (j10 >= 0) {
            lVar.X(j10);
        }
        if ((this.M & 1) != 0) {
            lVar.Z(v());
        }
        if ((this.M & 2) != 0) {
            z();
            lVar.b0(null);
        }
        if ((this.M & 4) != 0) {
            lVar.a0(y());
        }
        if ((this.M & 8) != 0) {
            lVar.Y(u());
        }
        return this;
    }

    @Override // l1.l
    public void i(s sVar) {
        if (J(sVar.f25162b)) {
            Iterator it = this.I.iterator();
            while (it.hasNext()) {
                l lVar = (l) it.next();
                if (lVar.J(sVar.f25162b)) {
                    lVar.i(sVar);
                    sVar.f25163c.add(lVar);
                }
            }
        }
    }

    public l j0(int i10) {
        if (i10 >= 0 && i10 < this.I.size()) {
            return (l) this.I.get(i10);
        }
        return null;
    }

    @Override // l1.l
    void k(s sVar) {
        super.k(sVar);
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((l) this.I.get(i10)).k(sVar);
        }
    }

    public int k0() {
        return this.I.size();
    }

    @Override // l1.l
    public void l(s sVar) {
        if (J(sVar.f25162b)) {
            Iterator it = this.I.iterator();
            while (it.hasNext()) {
                l lVar = (l) it.next();
                if (lVar.J(sVar.f25162b)) {
                    lVar.l(sVar);
                    sVar.f25163c.add(lVar);
                }
            }
        }
    }

    @Override // l1.l
    /* renamed from: l0 */
    public p S(l.f fVar) {
        return (p) super.S(fVar);
    }

    @Override // l1.l
    /* renamed from: m0 */
    public p T(View view) {
        for (int i10 = 0; i10 < this.I.size(); i10++) {
            ((l) this.I.get(i10)).T(view);
        }
        return (p) super.T(view);
    }

    @Override // l1.l
    /* renamed from: n0 */
    public p X(long j10) {
        ArrayList arrayList;
        super.X(j10);
        if (this.f25097c >= 0 && (arrayList = this.I) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((l) this.I.get(i10)).X(j10);
            }
        }
        return this;
    }

    @Override // l1.l
    /* renamed from: o */
    public l clone() {
        p pVar = (p) super.clone();
        pVar.I = new ArrayList();
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            pVar.i0(((l) this.I.get(i10)).clone());
        }
        return pVar;
    }

    @Override // l1.l
    /* renamed from: p0 */
    public p Z(TimeInterpolator timeInterpolator) {
        this.M |= 1;
        ArrayList arrayList = this.I;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((l) this.I.get(i10)).Z(timeInterpolator);
            }
        }
        return (p) super.Z(timeInterpolator);
    }

    @Override // l1.l
    protected void q(ViewGroup viewGroup, t tVar, t tVar2, ArrayList arrayList, ArrayList arrayList2) {
        long B = B();
        int size = this.I.size();
        for (int i10 = 0; i10 < size; i10++) {
            l lVar = (l) this.I.get(i10);
            if (B > 0 && (this.J || i10 == 0)) {
                long B2 = lVar.B();
                if (B2 > 0) {
                    lVar.c0(B2 + B);
                } else {
                    lVar.c0(B);
                }
            }
            lVar.q(viewGroup, tVar, tVar2, arrayList, arrayList2);
        }
    }

    public p r0(int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                this.J = false;
            } else {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i10);
            }
        } else {
            this.J = true;
        }
        return this;
    }

    @Override // l1.l
    /* renamed from: s0 */
    public p c0(long j10) {
        return (p) super.c0(j10);
    }
}
