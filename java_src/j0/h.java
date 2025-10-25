package j0;

import id.Function2;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    public static final a f24003a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: j0.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0215a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f24004a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f24005b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ List f24006c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0215a(List list, ad.e eVar) {
                super(2, eVar);
                this.f24006c = list;
            }

            @Override // id.Function2
            /* renamed from: a */
            public final Object invoke(s sVar, ad.e eVar) {
                return ((C0215a) create(sVar, eVar)).invokeSuspend(xc.t.f32733a);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                C0215a c0215a = new C0215a(this.f24006c, eVar);
                c0215a.f24005b = obj;
                return c0215a;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f24004a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        xc.m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    xc.m.b(obj);
                    a aVar = h.f24003a;
                    List list = this.f24006c;
                    this.f24004a = 1;
                    if (aVar.c(list, (s) this.f24005b, this) == e10) {
                        return e10;
                    }
                }
                return xc.t.f32733a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class b extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            Object f24007a;

            /* renamed from: b  reason: collision with root package name */
            Object f24008b;

            /* renamed from: c  reason: collision with root package name */
            /* synthetic */ Object f24009c;

            /* renamed from: e  reason: collision with root package name */
            int f24011e;

            b(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f24009c = obj;
                this.f24011e |= Integer.MIN_VALUE;
                return a.this.c(null, null, this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class c extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            Object f24012a;

            /* renamed from: b  reason: collision with root package name */
            Object f24013b;

            /* renamed from: c  reason: collision with root package name */
            Object f24014c;

            /* renamed from: d  reason: collision with root package name */
            int f24015d;

            /* renamed from: e  reason: collision with root package name */
            /* synthetic */ Object f24016e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ List f24017f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ List f24018g;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: j0.h$a$c$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0216a extends kotlin.coroutines.jvm.internal.k implements id.l {

                /* renamed from: a  reason: collision with root package name */
                int f24019a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ g f24020b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0216a(g gVar, ad.e eVar) {
                    super(1, eVar);
                    this.f24020b = gVar;
                }

                @Override // id.l
                /* renamed from: a */
                public final Object invoke(ad.e eVar) {
                    return ((C0216a) create(eVar)).invokeSuspend(xc.t.f32733a);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final ad.e create(ad.e eVar) {
                    return new C0216a(this.f24020b, eVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final Object invokeSuspend(Object obj) {
                    Object e10;
                    e10 = bd.d.e();
                    int i10 = this.f24019a;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            xc.m.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        xc.m.b(obj);
                        g gVar = this.f24020b;
                        this.f24019a = 1;
                        if (gVar.b(this) == e10) {
                            return e10;
                        }
                    }
                    return xc.t.f32733a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(List list, List list2, ad.e eVar) {
                super(2, eVar);
                this.f24017f = list;
                this.f24018g = list2;
            }

            @Override // id.Function2
            /* renamed from: a */
            public final Object invoke(Object obj, ad.e eVar) {
                return ((c) create(obj, eVar)).invokeSuspend(xc.t.f32733a);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                c cVar = new c(this.f24017f, this.f24018g, eVar);
                cVar.f24016e = obj;
                return cVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0074  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0093 A[RETURN] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0091 -> B:22:0x008e). Please submit an issue!!! */
            @Override // kotlin.coroutines.jvm.internal.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r11) {
                /*
                    r10 = this;
                    java.lang.Object r0 = bd.b.e()
                    int r1 = r10.f24015d
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L3a
                    if (r1 == r3) goto L24
                    if (r1 != r2) goto L1c
                    java.lang.Object r1 = r10.f24012a
                    java.util.Iterator r1 = (java.util.Iterator) r1
                    java.lang.Object r4 = r10.f24016e
                    java.util.List r4 = (java.util.List) r4
                    xc.m.b(r11)
                    r7 = r10
                    goto L8e
                L1c:
                    java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r11.<init>(r0)
                    throw r11
                L24:
                    java.lang.Object r1 = r10.f24014c
                    java.lang.Object r4 = r10.f24013b
                    j0.g r4 = (j0.g) r4
                    java.lang.Object r5 = r10.f24012a
                    java.util.Iterator r5 = (java.util.Iterator) r5
                    java.lang.Object r6 = r10.f24016e
                    java.util.List r6 = (java.util.List) r6
                    xc.m.b(r11)
                    r7 = r10
                    r9 = r6
                    r6 = r4
                    r4 = r9
                    goto L6c
                L3a:
                    xc.m.b(r11)
                    java.lang.Object r11 = r10.f24016e
                    java.util.List r1 = r10.f24017f
                    java.lang.Iterable r1 = (java.lang.Iterable) r1
                    java.util.List r4 = r10.f24018g
                    java.util.Iterator r1 = r1.iterator()
                    r5 = r10
                L4a:
                    boolean r6 = r1.hasNext()
                    if (r6 == 0) goto L93
                    java.lang.Object r6 = r1.next()
                    j0.g r6 = (j0.g) r6
                    r5.f24016e = r4
                    r5.f24012a = r1
                    r5.f24013b = r6
                    r5.f24014c = r11
                    r5.f24015d = r3
                    java.lang.Object r7 = r6.a(r11, r5)
                    if (r7 != r0) goto L67
                    return r0
                L67:
                    r9 = r1
                    r1 = r11
                    r11 = r7
                    r7 = r5
                    r5 = r9
                L6c:
                    java.lang.Boolean r11 = (java.lang.Boolean) r11
                    boolean r11 = r11.booleanValue()
                    if (r11 == 0) goto L90
                    j0.h$a$c$a r11 = new j0.h$a$c$a
                    r8 = 0
                    r11.<init>(r6, r8)
                    r4.add(r11)
                    r7.f24016e = r4
                    r7.f24012a = r5
                    r7.f24013b = r8
                    r7.f24014c = r8
                    r7.f24015d = r2
                    java.lang.Object r11 = r6.c(r1, r7)
                    if (r11 != r0) goto L91
                    return r0
                L8e:
                    r5 = r7
                    goto L4a
                L90:
                    r11 = r1
                L91:
                    r1 = r5
                    goto L8e
                L93:
                    return r11
                */
                throw new UnsupportedOperationException("Method not decompiled: j0.h.a.c.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0088 -> B:25:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x008b -> B:25:0x006b). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object c(java.util.List r7, j0.s r8, ad.e r9) {
            /*
                r6 = this;
                boolean r0 = r9 instanceof j0.h.a.b
                if (r0 == 0) goto L13
                r0 = r9
                j0.h$a$b r0 = (j0.h.a.b) r0
                int r1 = r0.f24011e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f24011e = r1
                goto L18
            L13:
                j0.h$a$b r0 = new j0.h$a$b
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.f24009c
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f24011e
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L46
                if (r2 == r4) goto L3e
                if (r2 != r3) goto L36
                java.lang.Object r7 = r0.f24008b
                java.util.Iterator r7 = (java.util.Iterator) r7
                java.lang.Object r8 = r0.f24007a
                kotlin.jvm.internal.c0 r8 = (kotlin.jvm.internal.c0) r8
                xc.m.b(r9)     // Catch: java.lang.Throwable -> L34
                goto L6b
            L34:
                r9 = move-exception
                goto L84
            L36:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L3e:
                java.lang.Object r7 = r0.f24007a
                java.util.List r7 = (java.util.List) r7
                xc.m.b(r9)
                goto L60
            L46:
                xc.m.b(r9)
                java.util.ArrayList r9 = new java.util.ArrayList
                r9.<init>()
                j0.h$a$c r2 = new j0.h$a$c
                r5 = 0
                r2.<init>(r7, r9, r5)
                r0.f24007a = r9
                r0.f24011e = r4
                java.lang.Object r7 = r8.a(r2, r0)
                if (r7 != r1) goto L5f
                return r1
            L5f:
                r7 = r9
            L60:
                kotlin.jvm.internal.c0 r8 = new kotlin.jvm.internal.c0
                r8.<init>()
                java.lang.Iterable r7 = (java.lang.Iterable) r7
                java.util.Iterator r7 = r7.iterator()
            L6b:
                boolean r9 = r7.hasNext()
                if (r9 == 0) goto L94
                java.lang.Object r9 = r7.next()
                id.l r9 = (id.l) r9
                r0.f24007a = r8     // Catch: java.lang.Throwable -> L34
                r0.f24008b = r7     // Catch: java.lang.Throwable -> L34
                r0.f24011e = r3     // Catch: java.lang.Throwable -> L34
                java.lang.Object r9 = r9.invoke(r0)     // Catch: java.lang.Throwable -> L34
                if (r9 != r1) goto L6b
                return r1
            L84:
                java.lang.Object r2 = r8.f24971a
                if (r2 != 0) goto L8b
                r8.f24971a = r9
                goto L6b
            L8b:
                kotlin.jvm.internal.m.b(r2)
                java.lang.Throwable r2 = (java.lang.Throwable) r2
                xc.a.a(r2, r9)
                goto L6b
            L94:
                java.lang.Object r7 = r8.f24971a
                java.lang.Throwable r7 = (java.lang.Throwable) r7
                if (r7 != 0) goto L9d
                xc.t r7 = xc.t.f32733a
                return r7
            L9d:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: j0.h.a.c(java.util.List, j0.s, ad.e):java.lang.Object");
        }

        public final Function2 b(List migrations) {
            kotlin.jvm.internal.m.e(migrations, "migrations");
            return new C0215a(migrations, null);
        }
    }
}
