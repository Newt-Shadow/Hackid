package de;

import ad.e;
import bd.c;
import bd.d;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.jvm.internal.h;
import m6.Task;
import m6.f;
import td.l;
import td.n;
import xc.l;
import xc.m;
import xc.t;
/* loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a implements f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f15165a;

        a(l lVar) {
            this.f15165a = lVar;
        }

        @Override // m6.f
        public final void onComplete(Task task) {
            Exception k10 = task.k();
            if (k10 == null) {
                if (task.n()) {
                    l.a.a(this.f15165a, null, 1, null);
                    return;
                }
                l lVar = this.f15165a;
                l.a aVar = xc.l.f32718b;
                lVar.resumeWith(xc.l.b(task.l()));
                return;
            }
            td.l lVar2 = this.f15165a;
            l.a aVar2 = xc.l.f32718b;
            lVar2.resumeWith(xc.l.b(m.a(k10)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: de.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0151b implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m6.b f15166a;

        C0151b(m6.b bVar) {
            this.f15166a = bVar;
        }

        public final void a(Throwable th) {
            this.f15166a.a();
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return t.f32733a;
        }
    }

    public static final Object a(Task task, e eVar) {
        return b(task, null, eVar);
    }

    private static final Object b(Task task, m6.b bVar, e eVar) {
        e c10;
        Object e10;
        if (!task.o()) {
            c10 = c.c(eVar);
            n nVar = new n(c10, 1);
            nVar.E();
            task.b(de.a.f15164a, new a(nVar));
            if (bVar != null) {
                nVar.l(new C0151b(bVar));
            }
            Object x10 = nVar.x();
            e10 = d.e();
            if (x10 == e10) {
                h.c(eVar);
            }
            return x10;
        }
        Exception k10 = task.k();
        if (k10 == null) {
            if (!task.n()) {
                return task.l();
            }
            throw new CancellationException("Task " + task + " was cancelled normally.");
        }
        throw k10;
    }
}
