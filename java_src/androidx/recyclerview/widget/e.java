package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
import z.n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: e  reason: collision with root package name */
    static final ThreadLocal f3391e = new ThreadLocal();

    /* renamed from: f  reason: collision with root package name */
    static Comparator f3392f = new a();

    /* renamed from: b  reason: collision with root package name */
    long f3394b;

    /* renamed from: c  reason: collision with root package name */
    long f3395c;

    /* renamed from: a  reason: collision with root package name */
    ArrayList f3393a = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList f3396d = new ArrayList();

    /* loaded from: classes.dex */
    static class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(c cVar, c cVar2) {
            boolean z10;
            boolean z11;
            RecyclerView recyclerView = cVar.f3404d;
            if (recyclerView == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (cVar2.f3404d == null) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 != z11) {
                if (recyclerView == null) {
                    return 1;
                }
                return -1;
            }
            boolean z12 = cVar.f3401a;
            if (z12 != cVar2.f3401a) {
                if (!z12) {
                    return 1;
                }
                return -1;
            }
            int i10 = cVar2.f3402b - cVar.f3402b;
            if (i10 != 0) {
                return i10;
            }
            int i11 = cVar.f3403c - cVar2.f3403c;
            if (i11 == 0) {
                return 0;
            }
            return i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f3397a;

        /* renamed from: b  reason: collision with root package name */
        int f3398b;

        /* renamed from: c  reason: collision with root package name */
        int[] f3399c;

        /* renamed from: d  reason: collision with root package name */
        int f3400d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            int[] iArr = this.f3399c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3400d = 0;
        }

        void b(RecyclerView recyclerView, boolean z10) {
            this.f3400d = 0;
            int[] iArr = this.f3399c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.n nVar = recyclerView.f3191l;
        }

        void c(int i10, int i11) {
            this.f3397a = i10;
            this.f3398b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public boolean f3401a;

        /* renamed from: b  reason: collision with root package name */
        public int f3402b;

        /* renamed from: c  reason: collision with root package name */
        public int f3403c;

        /* renamed from: d  reason: collision with root package name */
        public RecyclerView f3404d;

        /* renamed from: e  reason: collision with root package name */
        public int f3405e;

        c() {
        }

        public void a() {
            this.f3401a = false;
            this.f3402b = 0;
            this.f3403c = 0;
            this.f3404d = null;
            this.f3405e = 0;
        }
    }

    private void b() {
        c cVar;
        boolean z10;
        int size = this.f3393a.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView = (RecyclerView) this.f3393a.get(i11);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f3181d0.b(recyclerView, false);
                i10 += recyclerView.f3181d0.f3400d;
            }
        }
        this.f3396d.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView2 = (RecyclerView) this.f3393a.get(i13);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.f3181d0;
                int abs = Math.abs(bVar.f3397a) + Math.abs(bVar.f3398b);
                for (int i14 = 0; i14 < bVar.f3400d * 2; i14 += 2) {
                    if (i12 >= this.f3396d.size()) {
                        cVar = new c();
                        this.f3396d.add(cVar);
                    } else {
                        cVar = (c) this.f3396d.get(i12);
                    }
                    int[] iArr = bVar.f3399c;
                    int i15 = iArr[i14 + 1];
                    if (i15 <= abs) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    cVar.f3401a = z10;
                    cVar.f3402b = abs;
                    cVar.f3403c = i15;
                    cVar.f3404d = recyclerView2;
                    cVar.f3405e = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.f3396d, f3392f);
    }

    private void c(c cVar, long j10) {
        if (cVar.f3401a) {
            j10 = Long.MAX_VALUE;
        }
        h(cVar.f3404d, cVar.f3405e, j10);
    }

    private void d(long j10) {
        for (int i10 = 0; i10 < this.f3396d.size(); i10++) {
            c cVar = (c) this.f3396d.get(i10);
            if (cVar.f3404d != null) {
                c(cVar, j10);
                cVar.a();
            } else {
                return;
            }
        }
    }

    static boolean e(RecyclerView recyclerView, int i10) {
        if (recyclerView.f3182e.g() <= 0) {
            return false;
        }
        RecyclerView.E(recyclerView.f3182e.f(0));
        throw null;
    }

    private RecyclerView.a0 h(RecyclerView recyclerView, int i10, long j10) {
        if (e(recyclerView, i10)) {
            return null;
        }
        RecyclerView.t tVar = recyclerView.f3176b;
        try {
            recyclerView.Y();
            tVar.v(i10, false, j10);
            return null;
        } finally {
            recyclerView.a0(false);
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f3393a.add(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow() && this.f3394b == 0) {
            this.f3394b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f3181d0.c(i10, i11);
    }

    void g(long j10) {
        b();
        d(j10);
    }

    public void i(RecyclerView recyclerView) {
        this.f3393a.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            n.a("RV Prefetch");
            if (!this.f3393a.isEmpty()) {
                int size = this.f3393a.size();
                long j10 = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = (RecyclerView) this.f3393a.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j10 = Math.max(recyclerView.getDrawingTime(), j10);
                    }
                }
                if (j10 != 0) {
                    g(TimeUnit.MILLISECONDS.toNanos(j10) + this.f3395c);
                }
            }
        } finally {
            this.f3394b = 0L;
            n.b();
        }
    }
}
