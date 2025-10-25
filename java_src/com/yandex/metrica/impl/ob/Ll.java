package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class Ll<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f10762a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f10763b;

    /* renamed from: c  reason: collision with root package name */
    private final List<E1<T>> f10764c = new ArrayList();

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ E1 f10765a;

        a(E1 e12) {
            this.f10765a = e12;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            synchronized (Ll.this) {
                Object obj = Ll.this.f10762a;
                if (obj == null) {
                    Ll.this.f10764c.add(this.f10765a);
                } else {
                    this.f10765a.b(obj);
                }
            }
        }
    }

    public Ll(ICommonExecutor iCommonExecutor) {
        this.f10763b = iCommonExecutor;
    }

    public void a(E1<T> e12) {
        this.f10763b.execute(new a(e12));
    }

    public synchronized void a(T t10) {
        this.f10762a = t10;
        for (E1<T> e12 : this.f10764c) {
            e12.b(t10);
        }
        this.f10764c.clear();
    }
}
