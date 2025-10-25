package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import id.Function2;
import java.util.List;
import td.l0;
@kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$clear$1", f = "SharedPreferencesPlugin.kt", l = {134}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SharedPreferencesPlugin$clear$1 extends kotlin.coroutines.jvm.internal.k implements Function2 {
    final /* synthetic */ List<String> $allowList;
    int label;
    final /* synthetic */ SharedPreferencesPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$clear$1$1", f = "SharedPreferencesPlugin.kt", l = {}, m = "invokeSuspend")
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$clear$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.k implements Function2 {
        final /* synthetic */ List<String> $allowList;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<String> list, ad.e eVar) {
            super(2, eVar);
            this.$allowList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$allowList, eVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.label == 0) {
                xc.m.b(obj);
                o0.c cVar = (o0.c) this.L$0;
                List<String> list = this.$allowList;
                if (list != null) {
                    for (String str : list) {
                        cVar.i(o0.h.a(str));
                    }
                } else {
                    cVar.f();
                }
                return xc.t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(o0.c cVar, ad.e eVar) {
            return ((AnonymousClass1) create(cVar, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin$clear$1(SharedPreferencesPlugin sharedPreferencesPlugin, List<String> list, ad.e eVar) {
        super(2, eVar);
        this.this$0 = sharedPreferencesPlugin;
        this.$allowList = list;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final ad.e create(Object obj, ad.e eVar) {
        return new SharedPreferencesPlugin$clear$1(this.this$0, this.$allowList, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final Object invokeSuspend(Object obj) {
        Object e10;
        Context context;
        e10 = bd.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                xc.m.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            xc.m.b(obj);
            context = this.this$0.context;
            if (context == null) {
                kotlin.jvm.internal.m.s("context");
                context = null;
            }
            j0.i sharedPreferencesDataStore = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$allowList, null);
            this.label = 1;
            obj = o0.i.a(sharedPreferencesDataStore, anonymousClass1, this);
            if (obj == e10) {
                return e10;
            }
        }
        return obj;
    }

    @Override // id.Function2
    public final Object invoke(l0 l0Var, ad.e eVar) {
        return ((SharedPreferencesPlugin$clear$1) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
    }
}
