package androidx.lifecycle;

import androidx.lifecycle.i;
import java.util.Iterator;
import java.util.Map;
import n.b;
/* loaded from: classes.dex */
public abstract class q {
    static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    private boolean mChangingActiveState;
    private volatile Object mData;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    volatile Object mPendingData;
    private final Runnable mPostValueRunnable;
    private int mVersion;
    final Object mDataLock = new Object();
    private n.b mObservers = new n.b();
    int mActiveCount = 0;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (q.this.mDataLock) {
                obj = q.this.mPendingData;
                q.this.mPendingData = q.NOT_SET;
            }
            q.this.setValue(obj);
        }
    }

    /* loaded from: classes.dex */
    private class b extends d {
        b(t tVar) {
            super(tVar);
        }

        @Override // androidx.lifecycle.q.d
        boolean e() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    class c extends d implements k {

        /* renamed from: e  reason: collision with root package name */
        final m f3013e;

        c(m mVar, t tVar) {
            super(tVar);
            this.f3013e = mVar;
        }

        @Override // androidx.lifecycle.k
        public void a(m mVar, i.a aVar) {
            i.b b10 = this.f3013e.getLifecycle().b();
            if (b10 == i.b.DESTROYED) {
                q.this.removeObserver(this.f3015a);
                return;
            }
            i.b bVar = null;
            while (bVar != b10) {
                b(e());
                bVar = b10;
                b10 = this.f3013e.getLifecycle().b();
            }
        }

        @Override // androidx.lifecycle.q.d
        void c() {
            this.f3013e.getLifecycle().c(this);
        }

        @Override // androidx.lifecycle.q.d
        boolean d(m mVar) {
            if (this.f3013e == mVar) {
                return true;
            }
            return false;
        }

        @Override // androidx.lifecycle.q.d
        boolean e() {
            return this.f3013e.getLifecycle().b().b(i.b.STARTED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public abstract class d {

        /* renamed from: a  reason: collision with root package name */
        final t f3015a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3016b;

        /* renamed from: c  reason: collision with root package name */
        int f3017c = -1;

        d(t tVar) {
            this.f3015a = tVar;
        }

        void b(boolean z10) {
            int i10;
            if (z10 == this.f3016b) {
                return;
            }
            this.f3016b = z10;
            q qVar = q.this;
            if (z10) {
                i10 = 1;
            } else {
                i10 = -1;
            }
            qVar.changeActiveCounter(i10);
            if (this.f3016b) {
                q.this.dispatchingValue(this);
            }
        }

        void c() {
        }

        boolean d(m mVar) {
            return false;
        }

        abstract boolean e();
    }

    public q() {
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new a();
        this.mData = obj;
        this.mVersion = -1;
    }

    static void assertMainThread(String str) {
        if (m.c.f().b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void b(d dVar) {
        if (!dVar.f3016b) {
            return;
        }
        if (!dVar.e()) {
            dVar.b(false);
            return;
        }
        int i10 = dVar.f3017c;
        int i11 = this.mVersion;
        if (i10 >= i11) {
            return;
        }
        dVar.f3017c = i11;
        dVar.f3015a.a(this.mData);
    }

    void changeActiveCounter(int i10) {
        boolean z10;
        boolean z11;
        int i11 = this.mActiveCount;
        this.mActiveCount = i10 + i11;
        if (this.mChangingActiveState) {
            return;
        }
        this.mChangingActiveState = true;
        while (true) {
            try {
                int i12 = this.mActiveCount;
                if (i11 != i12) {
                    if (i11 == 0 && i12 > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (i11 > 0 && i12 == 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z10) {
                        onActive();
                    } else if (z11) {
                        onInactive();
                    }
                    i11 = i12;
                } else {
                    return;
                }
            } finally {
                this.mChangingActiveState = false;
            }
        }
    }

    void dispatchingValue(androidx.lifecycle.q.d dVar) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (dVar != null) {
                b(dVar);
                dVar = null;
            } else {
                b.d i10 = this.mObservers.i();
                while (i10.hasNext()) {
                    b((d) ((Map.Entry) i10.next()).getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    public Object getValue() {
        Object obj = this.mData;
        if (obj != NOT_SET) {
            return obj;
        }
        return null;
    }

    int getVersion() {
        return this.mVersion;
    }

    public boolean hasActiveObservers() {
        if (this.mActiveCount > 0) {
            return true;
        }
        return false;
    }

    public boolean hasObservers() {
        if (this.mObservers.size() > 0) {
            return true;
        }
        return false;
    }

    public boolean isInitialized() {
        if (this.mData != NOT_SET) {
            return true;
        }
        return false;
    }

    public void observe(m mVar, t tVar) {
        assertMainThread("observe");
        if (mVar.getLifecycle().b() == i.b.DESTROYED) {
            return;
        }
        c cVar = new c(mVar, tVar);
        d dVar = (d) this.mObservers.n(tVar, cVar);
        if (dVar != null && !dVar.d(mVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (dVar != null) {
            return;
        }
        mVar.getLifecycle().a(cVar);
    }

    public void observeForever(t tVar) {
        assertMainThread("observeForever");
        b bVar = new b(tVar);
        d dVar = (d) this.mObservers.n(tVar, bVar);
        if (!(dVar instanceof c)) {
            if (dVar != null) {
                return;
            }
            bVar.b(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    protected void onActive() {
    }

    protected void onInactive() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postValue(Object obj) {
        boolean z10;
        synchronized (this.mDataLock) {
            if (this.mPendingData == NOT_SET) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.mPendingData = obj;
        }
        if (!z10) {
            return;
        }
        m.c.f().c(this.mPostValueRunnable);
    }

    public void removeObserver(t tVar) {
        assertMainThread("removeObserver");
        d dVar = (d) this.mObservers.o(tVar);
        if (dVar == null) {
            return;
        }
        dVar.c();
        dVar.b(false);
    }

    public void removeObservers(m mVar) {
        assertMainThread("removeObservers");
        Iterator it = this.mObservers.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (((d) entry.getValue()).d(mVar)) {
                removeObserver((t) entry.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setValue(Object obj) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = obj;
        dispatchingValue(null);
    }
}
