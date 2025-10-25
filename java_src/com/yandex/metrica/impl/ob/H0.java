package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class H0 {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f10143a;

    /* renamed from: b  reason: collision with root package name */
    private final J0 f10144b;

    /* renamed from: c  reason: collision with root package name */
    private final d f10145c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f10146d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f10147e = new b();

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            H0.this.f10144b.a();
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((AbstractC0914v2) H0.this.f10145c).b()) {
                H0.this.f10146d.run();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class c {
        public H0 a(ICommonExecutor iCommonExecutor, J0 j02, d dVar) {
            return new H0(iCommonExecutor, j02, dVar);
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
    }

    public H0(ICommonExecutor iCommonExecutor, J0 j02, d dVar) {
        this.f10143a = iCommonExecutor;
        this.f10144b = j02;
        this.f10145c = dVar;
    }

    public void d() {
        this.f10143a.remove(this.f10146d);
        this.f10143a.remove(this.f10147e);
    }

    public void a() {
        this.f10143a.remove(this.f10146d);
        this.f10143a.executeDelayed(this.f10146d, 90L, TimeUnit.SECONDS);
    }

    public void b() {
        this.f10143a.execute(this.f10147e);
    }

    public void c() {
        this.f10143a.remove(this.f10146d);
        this.f10143a.executeDelayed(this.f10146d, 90L, TimeUnit.SECONDS);
    }
}
