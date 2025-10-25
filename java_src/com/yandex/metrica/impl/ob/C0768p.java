package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0792q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.p  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0768p implements C0792q.b {

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f13095a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13096b;

    /* renamed from: com.yandex.metrica.impl.ob.p$a */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f13097a;

        a(Activity activity) {
            this.f13097a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0768p.this.a(this.f13097a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.p$b */
    /* loaded from: classes2.dex */
    public interface b {
        void a(Activity activity);
    }

    public C0768p(C0792q c0792q, ICommonExecutor iCommonExecutor) {
        this.f13096b = iCommonExecutor;
        c0792q.a(this, new C0792q.a[0]);
    }

    public synchronized void a(b bVar) {
        this.f13095a.add(bVar);
    }

    public void a(Activity activity) {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f13095a);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(activity);
        }
    }

    @Override // com.yandex.metrica.impl.ob.C0792q.b
    public void a(Activity activity, C0792q.a aVar) {
        this.f13096b.execute(new a(activity));
    }
}
