package com.yandex.metrica.impl.ob;

import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.yandex.metrica.impl.ob.l3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0672l3 {

    /* renamed from: a  reason: collision with root package name */
    private final Lm f12766a;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<b> f12767b = new LinkedBlockingQueue();

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<Class, CopyOnWriteArrayList<C0772p3<? extends C0722n3>>> f12768c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private WeakHashMap<Object, CopyOnWriteArrayList<d>> f12769d = new WeakHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private ConcurrentHashMap<Class, C0722n3> f12770e = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$a */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                C0672l3.this.getClass();
                try {
                    ((b) C0672l3.this.f12767b.take()).a();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$b */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final C0722n3 f12772a;

        /* renamed from: b  reason: collision with root package name */
        private final C0772p3<? extends C0722n3> f12773b;

        /* synthetic */ b(C0722n3 c0722n3, C0772p3 c0772p3, a aVar) {
            this(c0722n3, c0772p3);
        }

        void a() {
            try {
                if (!this.f12773b.a(this.f12772a)) {
                    this.f12773b.b(this.f12772a);
                }
            } catch (Throwable unused) {
            }
        }

        private b(C0722n3 c0722n3, C0772p3<? extends C0722n3> c0772p3) {
            this.f12772a = c0722n3;
            this.f12773b = c0772p3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$c */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private static final C0672l3 f12774a = new C0672l3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$d */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        final CopyOnWriteArrayList<C0772p3<? extends C0722n3>> f12775a;

        /* renamed from: b  reason: collision with root package name */
        final C0772p3<? extends C0722n3> f12776b;

        /* synthetic */ d(CopyOnWriteArrayList copyOnWriteArrayList, C0772p3 c0772p3, a aVar) {
            this(copyOnWriteArrayList, c0772p3);
        }

        protected void finalize() {
            super.finalize();
            this.f12775a.remove(this.f12776b);
        }

        private d(CopyOnWriteArrayList<C0772p3<? extends C0722n3>> copyOnWriteArrayList, C0772p3<? extends C0722n3> c0772p3) {
            this.f12775a = copyOnWriteArrayList;
            this.f12776b = c0772p3;
        }
    }

    C0672l3() {
        Lm a10 = Mm.a("YMM-BD", new a());
        this.f12766a = a10;
        a10.start();
    }

    public static final C0672l3 a() {
        return c.f12774a;
    }

    public synchronized void a(C0722n3 c0722n3) {
        synchronized (this) {
            CopyOnWriteArrayList<C0772p3<? extends C0722n3>> copyOnWriteArrayList = this.f12768c.get(c0722n3.getClass());
            if (copyOnWriteArrayList != null) {
                Iterator<C0772p3<? extends C0722n3>> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    this.f12767b.add(new b(c0722n3, it.next(), null));
                }
            }
        }
        this.f12770e.put(c0722n3.getClass(), c0722n3);
    }

    public synchronized void a(Object obj, Class cls, C0772p3<? extends C0722n3> c0772p3) {
        CopyOnWriteArrayList<C0772p3<? extends C0722n3>> copyOnWriteArrayList = this.f12768c.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f12768c.put(cls, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(c0772p3);
        CopyOnWriteArrayList<d> copyOnWriteArrayList2 = this.f12769d.get(obj);
        if (copyOnWriteArrayList2 == null) {
            copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
            this.f12769d.put(obj, copyOnWriteArrayList2);
        }
        copyOnWriteArrayList2.add(new d(copyOnWriteArrayList, c0772p3, null));
        C0722n3 c0722n3 = this.f12770e.get(cls);
        if (c0722n3 != null) {
            this.f12767b.add(new b(c0722n3, c0772p3, null));
        }
    }

    public synchronized void a(Object obj) {
        CopyOnWriteArrayList<d> remove = this.f12769d.remove(obj);
        if (remove != null) {
            for (d dVar : remove) {
                dVar.f12775a.remove(dVar.f12776b);
            }
        }
    }
}
