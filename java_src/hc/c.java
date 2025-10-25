package hc;

import android.view.View;
import id.l;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import yc.w;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    public static final a f17029c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList f17030a;

    /* renamed from: b  reason: collision with root package name */
    private final b f17031b;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: hc.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static final class C0185a extends n implements l {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ c f17032e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0185a(c cVar) {
                super(1);
                this.f17032e = cVar;
            }

            @Override // id.l
            /* renamed from: a */
            public final ArrayList invoke(ArrayList mViews) {
                m.e(mViews, "mViews");
                b bVar = this.f17032e.f17031b;
                bVar.addAll(mViews);
                return bVar;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            c cVar = new c(null);
            f.f17054d.e(new C0185a(cVar));
            return cVar;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends ArrayList {
        b() {
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof View) {
                return i((View) obj);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        /* renamed from: d */
        public boolean add(View element) {
            m.e(element, "element");
            for (gc.d dVar : c.this.c()) {
                dVar.a(element, true);
            }
            return super.add(element);
        }

        public /* bridge */ boolean i(View view) {
            return super.contains(view);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof View) {
                return m((View) obj);
            }
            return -1;
        }

        public /* bridge */ int l() {
            return super.size();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof View) {
                return n((View) obj);
            }
            return -1;
        }

        public /* bridge */ int m(View view) {
            return super.indexOf(view);
        }

        public /* bridge */ int n(View view) {
            return super.lastIndexOf(view);
        }

        public /* bridge */ boolean o(View view) {
            return super.remove(view);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        /* renamed from: p */
        public View remove(int i10) {
            Object remove = super.remove(i10);
            m.d(remove, "super.removeAt(index)");
            View view = (View) remove;
            for (gc.d dVar : c.this.c()) {
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
                return o((View) obj);
            }
            return false;
        }
    }

    private c() {
        this.f17030a = new CopyOnWriteArrayList();
        this.f17031b = new b();
    }

    public final List b() {
        List k02;
        k02 = w.k0(this.f17031b);
        return k02;
    }

    public final CopyOnWriteArrayList c() {
        return this.f17030a;
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
