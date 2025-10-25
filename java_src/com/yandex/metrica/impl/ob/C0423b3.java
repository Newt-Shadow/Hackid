package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.b3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0423b3 implements InterfaceC0693m {

    /* renamed from: a  reason: collision with root package name */
    private final S3 f11996a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f11997b;

    /* renamed from: com.yandex.metrica.impl.ob.b3$a */
    /* loaded from: classes2.dex */
    class a extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ zb.d f11998a;

        a(zb.d dVar) {
            this.f11998a = dVar;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            S3 s32 = C0423b3.this.f11996a;
            C0423b3 c0423b3 = C0423b3.this;
            zb.d dVar = this.f11998a;
            c0423b3.getClass();
            s32.a(C0445c0.a().a(new C0573h3(dVar).a()));
        }
    }

    public C0423b3(S3 s32, ICommonExecutor iCommonExecutor) {
        this.f11996a = s32;
        this.f11997b = iCommonExecutor;
    }

    public void a(List<zb.d> list) {
        for (zb.d dVar : list) {
            this.f11997b.execute(new a(dVar));
        }
    }
}
