package com.yandex.metrica.impl.ob;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.re  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0830re {

    /* renamed from: h  reason: collision with root package name */
    private static Map<D0, Integer> f13497h;

    /* renamed from: i  reason: collision with root package name */
    private static final C0830re f13498i;

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0998ye f13499a;

    /* renamed from: b  reason: collision with root package name */
    private final Ge f13500b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0758oe f13501c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0854se f13502d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0974xe f13503e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1022ze f13504f;

    /* renamed from: g  reason: collision with root package name */
    private final C0878te f13505g;

    /* renamed from: com.yandex.metrica.impl.ob.re$b */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private InterfaceC0998ye f13506a;

        /* renamed from: b  reason: collision with root package name */
        private Ge f13507b;

        /* renamed from: c  reason: collision with root package name */
        private InterfaceC0758oe f13508c;

        /* renamed from: d  reason: collision with root package name */
        private InterfaceC0854se f13509d;

        /* renamed from: e  reason: collision with root package name */
        private InterfaceC0974xe f13510e;

        /* renamed from: f  reason: collision with root package name */
        private InterfaceC1022ze f13511f;

        /* renamed from: g  reason: collision with root package name */
        private C0878te f13512g;

        private b(C0830re c0830re) {
            this.f13506a = c0830re.f13499a;
            this.f13507b = c0830re.f13500b;
            this.f13508c = c0830re.f13501c;
            this.f13509d = c0830re.f13502d;
            this.f13510e = c0830re.f13503e;
            this.f13511f = c0830re.f13504f;
            this.f13512g = c0830re.f13505g;
        }

        public b a(InterfaceC0998ye interfaceC0998ye) {
            this.f13506a = interfaceC0998ye;
            return this;
        }

        public b a(Ge ge2) {
            this.f13507b = ge2;
            return this;
        }

        public b a(InterfaceC0758oe interfaceC0758oe) {
            this.f13508c = interfaceC0758oe;
            return this;
        }

        public b a(InterfaceC0854se interfaceC0854se) {
            this.f13509d = interfaceC0854se;
            return this;
        }

        public b a(InterfaceC0974xe interfaceC0974xe) {
            this.f13510e = interfaceC0974xe;
            return this;
        }

        public b a(InterfaceC1022ze interfaceC1022ze) {
            this.f13511f = interfaceC1022ze;
            return this;
        }

        public C0830re a() {
            return new C0830re(this);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(D0.FIRST_OCCURRENCE, 1);
        hashMap.put(D0.NON_FIRST_OCCURENCE, 0);
        hashMap.put(D0.UNKNOWN, -1);
        f13497h = Collections.unmodifiableMap(hashMap);
        f13498i = new C0830re(new De(), new Ee(), new Ae(), new Ce(), new C0902ue(), new C0926ve(), new C0878te());
    }

    private C0830re(b bVar) {
        this(bVar.f13506a, bVar.f13507b, bVar.f13508c, bVar.f13509d, bVar.f13510e, bVar.f13511f, bVar.f13512g);
    }

    public static C0830re b() {
        return f13498i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.C0808qf.d.a a(com.yandex.metrica.impl.ob.C0807qe r8, com.yandex.metrica.impl.ob.Lg r9) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0830re.a(com.yandex.metrica.impl.ob.qe, com.yandex.metrica.impl.ob.Lg):com.yandex.metrica.impl.ob.qf$d$a");
    }

    private C0830re(InterfaceC0998ye interfaceC0998ye, Ge ge2, InterfaceC0758oe interfaceC0758oe, InterfaceC0854se interfaceC0854se, InterfaceC0974xe interfaceC0974xe, InterfaceC1022ze interfaceC1022ze, C0878te c0878te) {
        this.f13499a = interfaceC0998ye;
        this.f13500b = ge2;
        this.f13501c = interfaceC0758oe;
        this.f13502d = interfaceC0854se;
        this.f13503e = interfaceC0974xe;
        this.f13504f = interfaceC1022ze;
        this.f13505g = c0878te;
    }

    public static b a() {
        return new b();
    }
}
