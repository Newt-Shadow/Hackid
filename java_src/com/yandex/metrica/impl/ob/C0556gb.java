package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.gb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0556gb {

    /* renamed from: a  reason: collision with root package name */
    private AbstractRunnableC0517em f12448a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f12449b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f12450c;

    /* renamed from: com.yandex.metrica.impl.ob.gb$a */
    /* loaded from: classes2.dex */
    public static final class a extends AbstractRunnableC0517em {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f12452b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ C0655kb f12453c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f12454d;

        a(b bVar, C0655kb c0655kb, long j10) {
            this.f12452b = bVar;
            this.f12453c = c0655kb;
            this.f12454d = j10;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            if (C0556gb.this.f12449b) {
                return;
            }
            this.f12452b.a(true);
            this.f12453c.a();
            C0556gb.this.f12450c.executeDelayed(C0556gb.b(C0556gb.this), this.f12454d, TimeUnit.SECONDS);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.gb$b */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f12455a;

        public b(boolean z10) {
            this.f12455a = z10;
        }

        public final boolean a() {
            return this.f12455a;
        }

        public /* synthetic */ b(boolean z10, int i10) {
            this((i10 & 1) != 0 ? false : z10);
        }

        public final void a(boolean z10) {
            this.f12455a = z10;
        }
    }

    public C0556gb(Uh uh, b bVar, md.c cVar, ICommonExecutor iCommonExecutor, C0655kb c0655kb) {
        this.f12450c = iCommonExecutor;
        this.f12448a = new a(bVar, c0655kb, uh.b());
        if (bVar.a()) {
            AbstractRunnableC0517em abstractRunnableC0517em = this.f12448a;
            if (abstractRunnableC0517em == null) {
                kotlin.jvm.internal.m.s("periodicRunnable");
            }
            abstractRunnableC0517em.run();
            return;
        }
        long b10 = cVar.b(uh.a() + 1);
        AbstractRunnableC0517em abstractRunnableC0517em2 = this.f12448a;
        if (abstractRunnableC0517em2 == null) {
            kotlin.jvm.internal.m.s("periodicRunnable");
        }
        iCommonExecutor.executeDelayed(abstractRunnableC0517em2, b10, TimeUnit.SECONDS);
    }

    public static final /* synthetic */ AbstractRunnableC0517em b(C0556gb c0556gb) {
        AbstractRunnableC0517em abstractRunnableC0517em = c0556gb.f12448a;
        if (abstractRunnableC0517em == null) {
            kotlin.jvm.internal.m.s("periodicRunnable");
        }
        return abstractRunnableC0517em;
    }

    public final void a() {
        this.f12449b = true;
        ICommonExecutor iCommonExecutor = this.f12450c;
        AbstractRunnableC0517em abstractRunnableC0517em = this.f12448a;
        if (abstractRunnableC0517em == null) {
            kotlin.jvm.internal.m.s("periodicRunnable");
        }
        iCommonExecutor.remove(abstractRunnableC0517em);
    }
}
