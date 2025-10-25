package yb;

import android.content.Context;
import com.yandex.metrica.impl.ob.C0594i;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import com.yandex.metrica.impl.ob.InterfaceC0643k;
import com.yandex.metrica.impl.ob.InterfaceC0668l;
import com.yandex.metrica.impl.ob.InterfaceC0693m;
import com.yandex.metrica.impl.ob.InterfaceC0718n;
import com.yandex.metrica.impl.ob.InterfaceC0743o;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class h implements InterfaceC0643k, InterfaceC0618j {

    /* renamed from: a  reason: collision with root package name */
    private C0594i f33215a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f33216b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f33217c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f33218d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0693m f33219e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0668l f33220f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0743o f33221g;

    /* loaded from: classes.dex */
    public static final class a extends zb.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C0594i f33223b;

        a(C0594i c0594i) {
            this.f33223b = c0594i;
        }

        @Override // zb.f
        public void a() {
            com.android.billingclient.api.d a10 = com.android.billingclient.api.d.j(h.this.f33216b).e(new d()).c().a();
            m.d(a10, "BillingClient\n          …                 .build()");
            a10.r(new yb.a(this.f33223b, a10, h.this));
        }
    }

    public h(Context context, Executor workerExecutor, Executor uiExecutor, InterfaceC0718n billingInfoStorage, InterfaceC0693m billingInfoSender, InterfaceC0668l billingInfoManager, InterfaceC0743o updatePolicy) {
        m.e(context, "context");
        m.e(workerExecutor, "workerExecutor");
        m.e(uiExecutor, "uiExecutor");
        m.e(billingInfoStorage, "billingInfoStorage");
        m.e(billingInfoSender, "billingInfoSender");
        m.e(billingInfoManager, "billingInfoManager");
        m.e(updatePolicy, "updatePolicy");
        this.f33216b = context;
        this.f33217c = workerExecutor;
        this.f33218d = uiExecutor;
        this.f33219e = billingInfoSender;
        this.f33220f = billingInfoManager;
        this.f33221g = updatePolicy;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0643k
    public void b() {
        C0594i c0594i = this.f33215a;
        if (c0594i != null) {
            this.f33218d.execute(new a(c0594i));
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public Executor c() {
        return this.f33218d;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public InterfaceC0693m d() {
        return this.f33219e;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public InterfaceC0668l e() {
        return this.f33220f;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public InterfaceC0743o f() {
        return this.f33221g;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0643k
    public synchronized void a(C0594i c0594i) {
        this.f33215a = c0594i;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public Executor a() {
        return this.f33217c;
    }
}
