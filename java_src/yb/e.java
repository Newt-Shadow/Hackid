package yb;

import c2.r;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import java.util.List;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class e implements r {

    /* renamed from: a  reason: collision with root package name */
    private final String f33199a;

    /* renamed from: b  reason: collision with root package name */
    private final com.android.billingclient.api.d f33200b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0618j f33201c;

    /* renamed from: d  reason: collision with root package name */
    private final id.a f33202d;

    /* renamed from: e  reason: collision with root package name */
    private final List f33203e;

    /* renamed from: f  reason: collision with root package name */
    private final g f33204f;

    /* loaded from: classes.dex */
    public static final class a extends zb.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.android.billingclient.api.h f33206b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f33207c;

        a(com.android.billingclient.api.h hVar, List list) {
            this.f33206b = hVar;
            this.f33207c = list;
        }

        @Override // zb.f
        public void a() {
            e.this.b(this.f33206b, this.f33207c);
            e.this.f33204f.c(e.this);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends zb.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f33209b;

        /* loaded from: classes.dex */
        public static final class a extends zb.f {
            a() {
            }

            @Override // zb.f
            public void a() {
                e.this.f33204f.c(b.this.f33209b);
            }
        }

        b(c cVar) {
            this.f33209b = cVar;
        }

        @Override // zb.f
        public void a() {
            if (e.this.f33200b.h()) {
                e.this.f33200b.o(e.this.f33199a, this.f33209b);
            } else {
                e.this.f33201c.a().execute(new a());
            }
        }
    }

    public e(String type, com.android.billingclient.api.d billingClient, InterfaceC0618j utilsProvider, id.a billingInfoSentListener, List purchaseHistoryRecords, g billingLibraryConnectionHolder) {
        m.e(type, "type");
        m.e(billingClient, "billingClient");
        m.e(utilsProvider, "utilsProvider");
        m.e(billingInfoSentListener, "billingInfoSentListener");
        m.e(purchaseHistoryRecords, "purchaseHistoryRecords");
        m.e(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f33199a = type;
        this.f33200b = billingClient;
        this.f33201c = utilsProvider;
        this.f33202d = billingInfoSentListener;
        this.f33203e = purchaseHistoryRecords;
        this.f33204f = billingLibraryConnectionHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(com.android.billingclient.api.h hVar, List list) {
        boolean z10;
        if (hVar.b() == 0) {
            if (list != null && !list.isEmpty()) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                c cVar = new c(this.f33199a, this.f33201c, this.f33202d, this.f33203e, list, this.f33204f);
                this.f33204f.b(cVar);
                this.f33201c.c().execute(new b(cVar));
            }
        }
    }

    @Override // c2.r
    public void a(com.android.billingclient.api.h billingResult, List list) {
        m.e(billingResult, "billingResult");
        this.f33201c.a().execute(new a(billingResult, list));
    }
}
