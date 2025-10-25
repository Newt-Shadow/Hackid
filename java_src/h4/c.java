package h4;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public class c implements c4.a {

    /* renamed from: a  reason: collision with root package name */
    public final long f16760a;

    /* renamed from: b  reason: collision with root package name */
    public final long f16761b;

    /* renamed from: c  reason: collision with root package name */
    public final long f16762c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f16763d;

    /* renamed from: e  reason: collision with root package name */
    public final long f16764e;

    /* renamed from: f  reason: collision with root package name */
    public final long f16765f;

    /* renamed from: g  reason: collision with root package name */
    public final long f16766g;

    /* renamed from: h  reason: collision with root package name */
    public final long f16767h;

    /* renamed from: i  reason: collision with root package name */
    public final o f16768i;

    /* renamed from: j  reason: collision with root package name */
    public final l f16769j;

    /* renamed from: k  reason: collision with root package name */
    public final Uri f16770k;

    /* renamed from: l  reason: collision with root package name */
    public final h f16771l;

    /* renamed from: m  reason: collision with root package name */
    private final List f16772m;

    public c(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, h hVar, o oVar, l lVar, Uri uri, List list) {
        List list2;
        this.f16760a = j10;
        this.f16761b = j11;
        this.f16762c = j12;
        this.f16763d = z10;
        this.f16764e = j13;
        this.f16765f = j14;
        this.f16766g = j15;
        this.f16767h = j16;
        this.f16771l = hVar;
        this.f16768i = oVar;
        this.f16770k = uri;
        this.f16769j = lVar;
        if (list == null) {
            list2 = Collections.emptyList();
        } else {
            list2 = list;
        }
        this.f16772m = list2;
    }

    private static ArrayList c(List list, LinkedList linkedList) {
        c4.c cVar = (c4.c) linkedList.poll();
        int i10 = cVar.f5031a;
        ArrayList arrayList = new ArrayList();
        do {
            int i11 = cVar.f5032b;
            a aVar = (a) list.get(i11);
            List list2 = aVar.f16752c;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add((j) list2.get(cVar.f5033c));
                cVar = (c4.c) linkedList.poll();
                if (cVar.f5031a != i10) {
                    break;
                }
            } while (cVar.f5032b == i11);
            arrayList.add(new a(aVar.f16750a, aVar.f16751b, arrayList2, aVar.f16753d, aVar.f16754e, aVar.f16755f));
        } while (cVar.f5031a == i10);
        linkedList.addFirst(cVar);
        return arrayList;
    }

    @Override // c4.a
    /* renamed from: b */
    public final c a(List list) {
        long j10;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new c4.c(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j11 = 0;
        int i10 = 0;
        while (true) {
            j10 = -9223372036854775807L;
            if (i10 >= e()) {
                break;
            }
            if (((c4.c) linkedList.peek()).f5031a != i10) {
                long f10 = f(i10);
                if (f10 != -9223372036854775807L) {
                    j11 += f10;
                }
            } else {
                g d10 = d(i10);
                arrayList.add(new g(d10.f16795a, d10.f16796b - j11, c(d10.f16797c, linkedList), d10.f16798d));
            }
            i10++;
        }
        long j12 = this.f16761b;
        if (j12 != -9223372036854775807L) {
            j10 = j12 - j11;
        }
        return new c(this.f16760a, j10, this.f16762c, this.f16763d, this.f16764e, this.f16765f, this.f16766g, this.f16767h, this.f16771l, this.f16768i, this.f16769j, this.f16770k, arrayList);
    }

    public final g d(int i10) {
        return (g) this.f16772m.get(i10);
    }

    public final int e() {
        return this.f16772m.size();
    }

    public final long f(int i10) {
        long j10;
        long j11;
        if (i10 == this.f16772m.size() - 1) {
            j10 = this.f16761b;
            if (j10 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            j11 = ((g) this.f16772m.get(i10)).f16796b;
        } else {
            j10 = ((g) this.f16772m.get(i10 + 1)).f16796b;
            j11 = ((g) this.f16772m.get(i10)).f16796b;
        }
        return j10 - j11;
    }

    public final long g(int i10) {
        return q0.A0(f(i10));
    }
}
