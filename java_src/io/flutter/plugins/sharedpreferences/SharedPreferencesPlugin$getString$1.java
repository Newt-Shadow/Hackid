package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import id.Function2;
import kotlin.jvm.internal.c0;
import o0.f;
import td.l0;
/* JADX INFO: Access modifiers changed from: package-private */
@kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1", f = "SharedPreferencesPlugin.kt", l = {201}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SharedPreferencesPlugin$getString$1 extends kotlin.coroutines.jvm.internal.k implements Function2 {
    final /* synthetic */ String $key;
    final /* synthetic */ c0 $value;
    Object L$0;
    int label;
    final /* synthetic */ SharedPreferencesPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin$getString$1(String str, SharedPreferencesPlugin sharedPreferencesPlugin, c0 c0Var, ad.e eVar) {
        super(2, eVar);
        this.$key = str;
        this.this$0 = sharedPreferencesPlugin;
        this.$value = c0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final ad.e create(Object obj, ad.e eVar) {
        return new SharedPreferencesPlugin$getString$1(this.$key, this.this$0, this.$value, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final Object invokeSuspend(Object obj) {
        Object e10;
        Context context;
        c0 c0Var;
        e10 = bd.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                c0Var = (c0) this.L$0;
                xc.m.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            xc.m.b(obj);
            final f.a g10 = o0.h.g(this.$key);
            context = this.this$0.context;
            if (context == null) {
                kotlin.jvm.internal.m.s("context");
                context = null;
            }
            final wd.d data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
            wd.d dVar = new wd.d() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1

                /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass2<T> implements wd.e {
                    final /* synthetic */ f.a $preferencesKey$inlined;
                    final /* synthetic */ wd.e $this_unsafeFlow;

                    @kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", l = {223}, m = "emit")
                    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1  reason: invalid class name */
                    /* loaded from: classes2.dex */
                    public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.d {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(ad.e eVar) {
                            super(eVar);
                        }

                        @Override // kotlin.coroutines.jvm.internal.a
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(wd.e eVar, f.a aVar) {
                        this.$this_unsafeFlow = eVar;
                        this.$preferencesKey$inlined = aVar;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                    @Override // wd.e
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r5, ad.e r6) {
                        /*
                            r4 = this;
                            boolean r0 = r6 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r6
                            io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1
                            r0.<init>(r6)
                        L18:
                            java.lang.Object r6 = r0.result
                            java.lang.Object r1 = bd.b.e()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L31
                            if (r2 != r3) goto L29
                            xc.m.b(r6)
                            goto L47
                        L29:
                            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                            r5.<init>(r6)
                            throw r5
                        L31:
                            xc.m.b(r6)
                            wd.e r6 = r4.$this_unsafeFlow
                            o0.f r5 = (o0.f) r5
                            o0.f$a r2 = r4.$preferencesKey$inlined
                            java.lang.Object r5 = r5.b(r2)
                            r0.label = r3
                            java.lang.Object r5 = r6.emit(r5, r0)
                            if (r5 != r1) goto L47
                            return r1
                        L47:
                            xc.t r5 = xc.t.f32733a
                            return r5
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, ad.e):java.lang.Object");
                    }
                }

                @Override // wd.d
                public Object collect(wd.e eVar, ad.e eVar2) {
                    Object e11;
                    Object collect = wd.d.this.collect(new AnonymousClass2(eVar, g10), eVar2);
                    e11 = bd.d.e();
                    if (collect == e11) {
                        return collect;
                    }
                    return xc.t.f32733a;
                }
            };
            c0 c0Var2 = this.$value;
            this.L$0 = c0Var2;
            this.label = 1;
            Object n10 = wd.f.n(dVar, this);
            if (n10 == e10) {
                return e10;
            }
            c0Var = c0Var2;
            obj = n10;
        }
        c0Var.f24971a = obj;
        return xc.t.f32733a;
    }

    @Override // id.Function2
    public final Object invoke(l0 l0Var, ad.e eVar) {
        return ((SharedPreferencesPlugin$getString$1) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
    }
}
