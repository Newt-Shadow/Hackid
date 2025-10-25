package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class c extends k {

    /* renamed from: h  reason: collision with root package name */
    private ArrayList f3339h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private ArrayList f3340i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private ArrayList f3341j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private ArrayList f3342k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    ArrayList f3343l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    ArrayList f3344m = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    ArrayList f3345n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    ArrayList f3346o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    ArrayList f3347p = new ArrayList();

    /* renamed from: q  reason: collision with root package name */
    ArrayList f3348q = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    ArrayList f3349r = new ArrayList();

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f3350a;

        a(ArrayList arrayList) {
            this.f3350a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f3350a.iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                c cVar = c.this;
                eVar.getClass();
                cVar.o(null, eVar.f3356a, eVar.f3357b, eVar.f3358c, eVar.f3359d);
            }
            this.f3350a.clear();
            c.this.f3344m.remove(this.f3350a);
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f3352a;

        b(ArrayList arrayList) {
            this.f3352a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f3352a.iterator();
            while (it.hasNext()) {
                c.this.n((d) it.next());
            }
            this.f3352a.clear();
            c.this.f3345n.remove(this.f3352a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0055c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f3354a;

        RunnableC0055c(ArrayList arrayList) {
            this.f3354a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f3354a.iterator();
            while (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                c.this.m(null);
            }
            this.f3354a.clear();
            c.this.f3343l.remove(this.f3354a);
        }
    }

    /* loaded from: classes.dex */
    private static class d {
    }

    /* loaded from: classes.dex */
    private static class e {

        /* renamed from: a  reason: collision with root package name */
        public int f3356a;

        /* renamed from: b  reason: collision with root package name */
        public int f3357b;

        /* renamed from: c  reason: collision with root package name */
        public int f3358c;

        /* renamed from: d  reason: collision with root package name */
        public int f3359d;
    }

    private void p(RecyclerView.a0 a0Var) {
        throw null;
    }

    private void r(d dVar) {
        dVar.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void c() {
        int size = this.f3341j.size() - 1;
        if (size < 0) {
            for (int size2 = this.f3339h.size() - 1; size2 >= 0; size2--) {
                android.support.v4.media.session.b.a(this.f3339h.get(size2));
                k(null);
                this.f3339h.remove(size2);
            }
            int size3 = this.f3340i.size() - 1;
            if (size3 < 0) {
                for (int size4 = this.f3342k.size() - 1; size4 >= 0; size4--) {
                    r((d) this.f3342k.get(size4));
                }
                this.f3342k.clear();
                if (!g()) {
                    return;
                }
                for (int size5 = this.f3344m.size() - 1; size5 >= 0; size5--) {
                    ArrayList arrayList = (ArrayList) this.f3344m.get(size5);
                    int size6 = arrayList.size() - 1;
                    if (size6 >= 0) {
                        ((e) arrayList.get(size6)).getClass();
                        throw null;
                    }
                }
                for (int size7 = this.f3343l.size() - 1; size7 >= 0; size7--) {
                    ArrayList arrayList2 = (ArrayList) this.f3343l.get(size7);
                    int size8 = arrayList2.size() - 1;
                    if (size8 >= 0) {
                        android.support.v4.media.session.b.a(arrayList2.get(size8));
                        throw null;
                    }
                }
                for (int size9 = this.f3345n.size() - 1; size9 >= 0; size9--) {
                    ArrayList arrayList3 = (ArrayList) this.f3345n.get(size9);
                    for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                        r((d) arrayList3.get(size10));
                        if (arrayList3.isEmpty()) {
                            this.f3345n.remove(arrayList3);
                        }
                    }
                }
                q(this.f3348q);
                q(this.f3347p);
                q(this.f3346o);
                q(this.f3349r);
                b();
                return;
            }
            android.support.v4.media.session.b.a(this.f3340i.get(size3));
            throw null;
        }
        ((e) this.f3341j.get(size)).getClass();
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean g() {
        if (this.f3340i.isEmpty() && this.f3342k.isEmpty() && this.f3341j.isEmpty() && this.f3339h.isEmpty() && this.f3347p.isEmpty() && this.f3348q.isEmpty() && this.f3346o.isEmpty() && this.f3349r.isEmpty() && this.f3344m.isEmpty() && this.f3343l.isEmpty() && this.f3345n.isEmpty()) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void i() {
        long j10;
        boolean z10 = !this.f3339h.isEmpty();
        boolean z11 = !this.f3341j.isEmpty();
        boolean z12 = !this.f3342k.isEmpty();
        boolean z13 = !this.f3340i.isEmpty();
        if (!z10 && !z11 && !z13 && !z12) {
            return;
        }
        Iterator it = this.f3339h.iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.b.a(it.next());
            p(null);
        }
        this.f3339h.clear();
        if (z11) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f3341j);
            this.f3344m.add(arrayList);
            this.f3341j.clear();
            a aVar = new a(arrayList);
            if (!z10) {
                aVar.run();
            } else {
                ((e) arrayList.get(0)).getClass();
                throw null;
            }
        }
        if (z12) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(this.f3342k);
            this.f3345n.add(arrayList2);
            this.f3342k.clear();
            b bVar = new b(arrayList2);
            if (!z10) {
                bVar.run();
            } else {
                ((d) arrayList2.get(0)).getClass();
                throw null;
            }
        }
        if (z13) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.addAll(this.f3340i);
            this.f3343l.add(arrayList3);
            this.f3340i.clear();
            RunnableC0055c runnableC0055c = new RunnableC0055c(arrayList3);
            if (!z10 && !z11 && !z12) {
                runnableC0055c.run();
                return;
            }
            if (z10) {
                f();
            }
            long j11 = 0;
            if (z11) {
                j10 = e();
            } else {
                j10 = 0;
            }
            if (z12) {
                j11 = d();
            }
            Math.max(j10, j11);
            android.support.v4.media.session.b.a(arrayList3.get(0));
            throw null;
        }
    }

    void m(RecyclerView.a0 a0Var) {
        throw null;
    }

    void n(d dVar) {
        dVar.getClass();
    }

    void o(RecyclerView.a0 a0Var, int i10, int i11, int i12, int i13) {
        throw null;
    }

    void q(List list) {
        int size = list.size() - 1;
        if (size < 0) {
            return;
        }
        android.support.v4.media.session.b.a(list.get(size));
        throw null;
    }
}
