package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m;
import androidx.lifecycle.s;
import androidx.lifecycle.t;
import androidx.loader.app.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import r.j;
import z0.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends androidx.loader.app.a {

    /* renamed from: c  reason: collision with root package name */
    static boolean f3026c = false;

    /* renamed from: a  reason: collision with root package name */
    private final m f3027a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3028b;

    /* loaded from: classes.dex */
    public static class a extends s implements b.a {

        /* renamed from: a  reason: collision with root package name */
        private final int f3029a;

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f3030b;

        /* renamed from: c  reason: collision with root package name */
        private final z0.b f3031c;

        /* renamed from: d  reason: collision with root package name */
        private m f3032d;

        /* renamed from: e  reason: collision with root package name */
        private C0049b f3033e;

        /* renamed from: f  reason: collision with root package name */
        private z0.b f3034f;

        a(int i10, Bundle bundle, z0.b bVar, z0.b bVar2) {
            this.f3029a = i10;
            this.f3030b = bundle;
            this.f3031c = bVar;
            this.f3034f = bVar2;
            bVar.r(i10, this);
        }

        @Override // z0.b.a
        public void a(z0.b bVar, Object obj) {
            if (b.f3026c) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                setValue(obj);
                return;
            }
            if (b.f3026c) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            postValue(obj);
        }

        z0.b c(boolean z10) {
            if (b.f3026c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f3031c.b();
            this.f3031c.a();
            C0049b c0049b = this.f3033e;
            if (c0049b != null) {
                removeObserver(c0049b);
                if (z10) {
                    c0049b.d();
                }
            }
            this.f3031c.w(this);
            if ((c0049b != null && !c0049b.c()) || z10) {
                this.f3031c.s();
                return this.f3034f;
            }
            return this.f3031c;
        }

        public void d(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f3029a);
            printWriter.print(" mArgs=");
            printWriter.println(this.f3030b);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f3031c);
            z0.b bVar = this.f3031c;
            bVar.g(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f3033e != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f3033e);
                C0049b c0049b = this.f3033e;
                c0049b.b(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(e().d(getValue()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(hasActiveObservers());
        }

        z0.b e() {
            return this.f3031c;
        }

        void f() {
            m mVar = this.f3032d;
            C0049b c0049b = this.f3033e;
            if (mVar != null && c0049b != null) {
                super.removeObserver(c0049b);
                observe(mVar, c0049b);
            }
        }

        z0.b g(m mVar, a.InterfaceC0048a interfaceC0048a) {
            C0049b c0049b = new C0049b(this.f3031c, interfaceC0048a);
            observe(mVar, c0049b);
            t tVar = this.f3033e;
            if (tVar != null) {
                removeObserver(tVar);
            }
            this.f3032d = mVar;
            this.f3033e = c0049b;
            return this.f3031c;
        }

        @Override // androidx.lifecycle.q
        protected void onActive() {
            if (b.f3026c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f3031c.u();
        }

        @Override // androidx.lifecycle.q
        protected void onInactive() {
            if (b.f3026c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f3031c.v();
        }

        @Override // androidx.lifecycle.q
        public void removeObserver(t tVar) {
            super.removeObserver(tVar);
            this.f3032d = null;
            this.f3033e = null;
        }

        @Override // androidx.lifecycle.s, androidx.lifecycle.q
        public void setValue(Object obj) {
            super.setValue(obj);
            z0.b bVar = this.f3034f;
            if (bVar != null) {
                bVar.s();
                this.f3034f = null;
            }
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append("LoaderInfo{");
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append(" #");
            sb2.append(this.f3029a);
            sb2.append(" : ");
            Class<?> cls = this.f3031c.getClass();
            sb2.append(cls.getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(cls)));
            sb2.append("}}");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.loader.app.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0049b implements t {

        /* renamed from: a  reason: collision with root package name */
        private final z0.b f3035a;

        /* renamed from: b  reason: collision with root package name */
        private final a.InterfaceC0048a f3036b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f3037c = false;

        C0049b(z0.b bVar, a.InterfaceC0048a interfaceC0048a) {
            this.f3035a = bVar;
            this.f3036b = interfaceC0048a;
        }

        @Override // androidx.lifecycle.t
        public void a(Object obj) {
            if (b.f3026c) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f3035a + ": " + this.f3035a.d(obj));
            }
            this.f3037c = true;
            this.f3036b.a(this.f3035a, obj);
        }

        public void b(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f3037c);
        }

        boolean c() {
            return this.f3037c;
        }

        void d() {
            if (this.f3037c) {
                if (b.f3026c) {
                    Log.v("LoaderManager", "  Resetting: " + this.f3035a);
                }
                this.f3036b.c(this.f3035a);
            }
        }

        public String toString() {
            return this.f3036b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c extends j0 {

        /* renamed from: d  reason: collision with root package name */
        private static final k0.c f3038d = new a();

        /* renamed from: b  reason: collision with root package name */
        private j f3039b = new j();

        /* renamed from: c  reason: collision with root package name */
        private boolean f3040c = false;

        /* loaded from: classes.dex */
        static class a implements k0.c {
            a() {
            }

            @Override // androidx.lifecycle.k0.c
            public j0 a(Class cls) {
                return new c();
            }
        }

        c() {
        }

        static c g(l0 l0Var) {
            return (c) new k0(l0Var, f3038d).a(c.class);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.j0
        public void d() {
            super.d();
            int i10 = this.f3039b.i();
            for (int i11 = 0; i11 < i10; i11++) {
                ((a) this.f3039b.j(i11)).c(true);
            }
            this.f3039b.b();
        }

        public void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f3039b.i() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i10 = 0; i10 < this.f3039b.i(); i10++) {
                    a aVar = (a) this.f3039b.j(i10);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f3039b.e(i10));
                    printWriter.print(": ");
                    printWriter.println(aVar.toString());
                    aVar.d(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        void f() {
            this.f3040c = false;
        }

        a h(int i10) {
            return (a) this.f3039b.d(i10);
        }

        boolean i() {
            return this.f3040c;
        }

        void j() {
            int i10 = this.f3039b.i();
            for (int i11 = 0; i11 < i10; i11++) {
                ((a) this.f3039b.j(i11)).f();
            }
        }

        void k(int i10, a aVar) {
            this.f3039b.f(i10, aVar);
        }

        void l() {
            this.f3040c = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(m mVar, l0 l0Var) {
        this.f3027a = mVar;
        this.f3028b = c.g(l0Var);
    }

    private z0.b e(int i10, Bundle bundle, a.InterfaceC0048a interfaceC0048a, z0.b bVar) {
        try {
            this.f3028b.l();
            z0.b b10 = interfaceC0048a.b(i10, bundle);
            if (b10 != null) {
                if (b10.getClass().isMemberClass() && !Modifier.isStatic(b10.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + b10);
                }
                a aVar = new a(i10, bundle, b10, bVar);
                if (f3026c) {
                    Log.v("LoaderManager", "  Created new loader " + aVar);
                }
                this.f3028b.k(i10, aVar);
                this.f3028b.f();
                return aVar.g(this.f3027a, interfaceC0048a);
            }
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
        } catch (Throwable th) {
            this.f3028b.f();
            throw th;
        }
    }

    @Override // androidx.loader.app.a
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f3028b.e(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.a
    public z0.b c(int i10, Bundle bundle, a.InterfaceC0048a interfaceC0048a) {
        if (!this.f3028b.i()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                a h10 = this.f3028b.h(i10);
                if (f3026c) {
                    Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
                }
                if (h10 == null) {
                    return e(i10, bundle, interfaceC0048a, null);
                }
                if (f3026c) {
                    Log.v("LoaderManager", "  Re-using existing loader " + h10);
                }
                return h10.g(this.f3027a, interfaceC0048a);
            }
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.loader.app.a
    public void d() {
        this.f3028b.j();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("LoaderManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        Class<?> cls = this.f3027a.getClass();
        sb2.append(cls.getSimpleName());
        sb2.append("{");
        sb2.append(Integer.toHexString(System.identityHashCode(cls)));
        sb2.append("}}");
        return sb2.toString();
    }
}
