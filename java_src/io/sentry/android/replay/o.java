package io.sentry.android.replay;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import io.sentry.android.replay.o;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class o implements Closeable {

    /* renamed from: e  reason: collision with root package name */
    public static final a f22757e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f22758a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f22759b;

    /* renamed from: c  reason: collision with root package name */
    private final CopyOnWriteArrayList f22760c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList f22761d;

    /* loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.sentry.android.replay.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0204a extends kotlin.jvm.internal.n implements id.l {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ o f22762e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0204a(o oVar) {
                super(1);
                this.f22762e = oVar;
            }

            @Override // id.l
            /* renamed from: a */
            public final ArrayList invoke(ArrayList mViews) {
                ArrayList arrayList;
                kotlin.jvm.internal.m.e(mViews, "mViews");
                Object obj = this.f22762e.f22759b;
                o oVar = this.f22762e;
                synchronized (obj) {
                    arrayList = oVar.f22761d;
                    arrayList.addAll(mViews);
                }
                return arrayList;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(o this_apply) {
            kotlin.jvm.internal.m.e(this_apply, "$this_apply");
            if (this_apply.f22758a.get()) {
                return;
            }
            w.f22862a.e(new C0204a(this_apply));
        }

        public final o b() {
            final o oVar = new o(null);
            new Handler(Looper.getMainLooper()).postAtFrontOfQueue(new Runnable() { // from class: io.sentry.android.replay.n
                @Override // java.lang.Runnable
                public final void run() {
                    o.a.c(o.this);
                }
            });
            return oVar;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends ArrayList {
        b() {
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection elements) {
            kotlin.jvm.internal.m.e(elements, "elements");
            for (d dVar : o.this.e()) {
                Iterator it = elements.iterator();
                while (it.hasNext()) {
                    dVar.a((View) it.next(), true);
                }
            }
            return super.addAll(elements);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (!(obj instanceof View)) {
                return false;
            }
            return i((View) obj);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        /* renamed from: d */
        public boolean add(View element) {
            kotlin.jvm.internal.m.e(element, "element");
            for (d dVar : o.this.e()) {
                dVar.a(element, true);
            }
            return super.add(element);
        }

        public /* bridge */ boolean i(View view) {
            return super.contains(view);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (!(obj instanceof View)) {
                return -1;
            }
            return m((View) obj);
        }

        public /* bridge */ int l() {
            return super.size();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (!(obj instanceof View)) {
                return -1;
            }
            return n((View) obj);
        }

        public /* bridge */ int m(View view) {
            return super.indexOf(view);
        }

        public /* bridge */ int n(View view) {
            return super.lastIndexOf(view);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        /* renamed from: o */
        public final /* bridge */ View remove(int i10) {
            return r(i10);
        }

        public /* bridge */ boolean p(View view) {
            return super.remove(view);
        }

        public View r(int i10) {
            Object remove = super.remove(i10);
            kotlin.jvm.internal.m.d(remove, "super.removeAt(index)");
            View view = (View) remove;
            for (d dVar : o.this.e()) {
                dVar.a(view, false);
            }
            return view;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ int size() {
            return l();
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean remove(Object obj) {
            if (obj instanceof View) {
                return p((View) obj);
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends CopyOnWriteArrayList {
        c() {
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            boolean z10;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = obj instanceof d;
            }
            if (!z10) {
                return false;
            }
            return i((d) obj);
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        /* renamed from: d */
        public boolean add(d dVar) {
            Object obj = o.this.f22759b;
            o oVar = o.this;
            synchronized (obj) {
                for (View view : oVar.f22761d) {
                    if (dVar != null) {
                        dVar.a(view, true);
                    }
                }
                xc.t tVar = xc.t.f32733a;
            }
            return super.add(dVar);
        }

        public /* bridge */ boolean i(d dVar) {
            return super.contains(dVar);
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            boolean z10;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = obj instanceof d;
            }
            if (!z10) {
                return -1;
            }
            return m((d) obj);
        }

        public /* bridge */ int l() {
            return super.size();
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            boolean z10;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = obj instanceof d;
            }
            if (!z10) {
                return -1;
            }
            return n((d) obj);
        }

        public /* bridge */ int m(d dVar) {
            return super.indexOf(dVar);
        }

        public /* bridge */ int n(d dVar) {
            return super.lastIndexOf(dVar);
        }

        public /* bridge */ boolean o(d dVar) {
            return super.remove(dVar);
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        public final /* bridge */ boolean remove(Object obj) {
            boolean z10;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = obj instanceof d;
            }
            if (!z10) {
                return false;
            }
            return o((d) obj);
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return l();
        }
    }

    public /* synthetic */ o(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22758a.set(true);
        this.f22760c.clear();
    }

    public final CopyOnWriteArrayList e() {
        return this.f22760c;
    }

    private o() {
        this.f22758a = new AtomicBoolean(false);
        this.f22759b = new Object();
        this.f22760c = new c();
        this.f22761d = new b();
    }
}
