package com.yandex.metrica.impl.ob;

import android.os.Looper;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.yandex.metrica.impl.ob.k3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0647k3 {

    /* renamed from: a  reason: collision with root package name */
    private final c f12734a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0691lm<Thread, StackTraceElement[], E6> f12735b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0442bm f12736c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.k3$a */
    /* loaded from: classes2.dex */
    public class a implements c {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.k3$b */
    /* loaded from: classes2.dex */
    public class b implements Comparator<Thread> {
        b(C0647k3 c0647k3) {
        }

        @Override // java.util.Comparator
        public int compare(Thread thread, Thread thread2) {
            Thread thread3 = thread;
            Thread thread4 = thread2;
            if (thread3 != thread4) {
                String name = thread3.getName();
                String name2 = thread4.getName();
                if (name == null) {
                    if (name2 != null) {
                        return -1;
                    }
                } else if (name2 == null) {
                    return 1;
                } else {
                    return name.compareTo(name2);
                }
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.k3$c */
    /* loaded from: classes2.dex */
    public interface c {
    }

    public C0647k3() {
        this(new a(), new C0622j3(), P.g().j());
    }

    public C0942w6 a() {
        StackTraceElement[] stackTraceElementArr;
        ((a) this.f12734a).getClass();
        Thread thread = Looper.getMainLooper().getThread();
        try {
            stackTraceElementArr = thread.getStackTrace();
        } catch (SecurityException unused) {
            stackTraceElementArr = null;
        }
        return new C0942w6(this.f12735b.a(thread, stackTraceElementArr), a(thread, null), ((Xl) this.f12736c).b());
    }

    C0647k3(c cVar, InterfaceC0691lm<Thread, StackTraceElement[], E6> interfaceC0691lm, InterfaceC0442bm interfaceC0442bm) {
        this.f12734a = cVar;
        this.f12735b = interfaceC0691lm;
        this.f12736c = interfaceC0442bm;
    }

    public List<E6> a(Thread thread) {
        StackTraceElement[] stackTraceElementArr;
        ((a) this.f12734a).getClass();
        Thread thread2 = Looper.getMainLooper().getThread();
        List<E6> a10 = a(thread2, thread);
        if (thread != thread2) {
            try {
                stackTraceElementArr = thread2.getStackTrace();
            } catch (SecurityException unused) {
                stackTraceElementArr = null;
            }
            ((ArrayList) a10).add(0, this.f12735b.a(thread2, stackTraceElementArr));
        }
        return a10;
    }

    private List<E6> a(Thread thread, Thread thread2) {
        Map<Thread, StackTraceElement[]> map;
        ArrayList arrayList = new ArrayList();
        TreeMap treeMap = new TreeMap(new b(this));
        try {
            ((a) this.f12734a).getClass();
            map = Thread.getAllStackTraces();
        } catch (SecurityException unused) {
            map = null;
        }
        if (map != null) {
            treeMap.putAll(map);
        }
        if (thread2 != null) {
            treeMap.remove(thread2);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Thread thread3 = (Thread) entry.getKey();
            if (thread3 != thread && thread3 != thread2) {
                arrayList.add(this.f12735b.a(thread3, (StackTraceElement[]) entry.getValue()));
            }
        }
        return arrayList;
    }
}
