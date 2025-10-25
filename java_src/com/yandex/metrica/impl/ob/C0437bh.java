package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.bh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0437bh {

    /* renamed from: a  reason: collision with root package name */
    private ICommonExecutor f12052a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage f12053b;

    /* renamed from: c  reason: collision with root package name */
    private b f12054c;

    /* renamed from: d  reason: collision with root package name */
    private C0921v9 f12055d;

    /* renamed from: e  reason: collision with root package name */
    private final CacheControlHttpsConnectionPerformer f12056e;

    /* renamed from: f  reason: collision with root package name */
    private final dc.c f12057f;

    /* renamed from: g  reason: collision with root package name */
    private final C0757od f12058g;

    /* renamed from: h  reason: collision with root package name */
    private String f12059h;

    /* renamed from: com.yandex.metrica.impl.ob.bh$a */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0412ah f12060a;

        a(C0412ah c0412ah) {
            this.f12060a = c0412ah;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0437bh c0437bh = C0437bh.this;
            C0437bh.a(c0437bh, this.f12060a, c0437bh.f12059h);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.bh$b */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final C0611ih f12062a;

        public b() {
            this(new C0611ih());
        }

        public List<C0587hh> a(byte[] bArr) {
            ArrayList arrayList = new ArrayList();
            if (A2.a(bArr)) {
                return arrayList;
            }
            try {
                return this.f12062a.a(new String(bArr, "UTF-8"));
            } catch (UnsupportedEncodingException unused) {
                return arrayList;
            }
        }

        b(C0611ih c0611ih) {
            this.f12062a = c0611ih;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0437bh(android.content.Context r10, java.lang.String r11, com.yandex.metrica.core.api.executors.ICommonExecutor r12) {
        /*
            r9 = this;
            java.lang.Class<com.yandex.metrica.impl.ob.eh> r11 = com.yandex.metrica.impl.ob.C0512eh.class
            com.yandex.metrica.impl.ob.fa r11 = com.yandex.metrica.impl.ob.InterfaceC0530fa.b.a(r11)
            com.yandex.metrica.core.api.ProtobufStateStorage r2 = r11.a(r10)
            com.yandex.metrica.impl.ob.bh$b r3 = new com.yandex.metrica.impl.ob.bh$b
            r3.<init>()
            com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer r4 = new com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer
            com.yandex.metrica.impl.ob.F0 r11 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.sd r11 = r11.t()
            r11.getClass()
            r11 = 0
            r4.<init>(r11)
            com.yandex.metrica.impl.ob.v9 r6 = new com.yandex.metrica.impl.ob.v9
            r6.<init>()
            dc.c r7 = new dc.c
            r7.<init>()
            com.yandex.metrica.impl.ob.od r8 = new com.yandex.metrica.impl.ob.od
            r8.<init>(r10)
            r1 = 0
            r0 = r9
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0437bh.<init>(android.content.Context, java.lang.String, com.yandex.metrica.core.api.executors.ICommonExecutor):void");
    }

    public void a(C0412ah c0412ah) {
        this.f12052a.execute(new a(c0412ah));
    }

    public boolean b(C0787pi c0787pi) {
        String str = this.f12059h;
        if (str == null) {
            return c0787pi.L() != null;
        }
        return !str.equals(c0787pi.L());
    }

    static void a(C0437bh c0437bh, C0412ah c0412ah, String str) {
        if (!c0437bh.f12058g.canBeExecuted() || str == null) {
            return;
        }
        c0437bh.f12056e.a(str, new C0462ch(c0437bh, (C0512eh) c0437bh.f12053b.read(), c0412ah));
    }

    C0437bh(String str, ProtobufStateStorage protobufStateStorage, b bVar, CacheControlHttpsConnectionPerformer cacheControlHttpsConnectionPerformer, ICommonExecutor iCommonExecutor, C0921v9 c0921v9, dc.c cVar, C0757od c0757od) {
        this.f12059h = str;
        this.f12053b = protobufStateStorage;
        this.f12054c = bVar;
        this.f12056e = cacheControlHttpsConnectionPerformer;
        this.f12052a = iCommonExecutor;
        this.f12055d = c0921v9;
        this.f12057f = cVar;
        this.f12058g = c0757od;
    }

    public void a(C0787pi c0787pi) {
        if (c0787pi != null) {
            this.f12059h = c0787pi.L();
        }
    }
}
