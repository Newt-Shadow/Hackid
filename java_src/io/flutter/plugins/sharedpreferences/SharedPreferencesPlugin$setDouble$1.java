package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import id.Function2;
import o0.f;
import td.l0;
@kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDouble$1", f = "SharedPreferencesPlugin.kt", l = {107}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SharedPreferencesPlugin$setDouble$1 extends kotlin.coroutines.jvm.internal.k implements Function2 {
    final /* synthetic */ String $key;
    final /* synthetic */ double $value;
    int label;
    final /* synthetic */ SharedPreferencesPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDouble$1$1", f = "SharedPreferencesPlugin.kt", l = {}, m = "invokeSuspend")
    /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setDouble$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.k implements Function2 {
        final /* synthetic */ f.a $doubleKey;
        final /* synthetic */ double $value;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(f.a aVar, double d10, ad.e eVar) {
            super(2, eVar);
            this.$doubleKey = aVar;
            this.$value = d10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$doubleKey, this.$value, eVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.label == 0) {
                xc.m.b(obj);
                ((o0.c) this.L$0).j(this.$doubleKey, kotlin.coroutines.jvm.internal.b.b(this.$value));
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
    public SharedPreferencesPlugin$setDouble$1(String str, SharedPreferencesPlugin sharedPreferencesPlugin, double d10, ad.e eVar) {
        super(2, eVar);
        this.$key = str;
        this.this$0 = sharedPreferencesPlugin;
        this.$value = d10;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final ad.e create(Object obj, ad.e eVar) {
        return new SharedPreferencesPlugin$setDouble$1(this.$key, this.this$0, this.$value, eVar);
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
            f.a c10 = o0.h.c(this.$key);
            context = this.this$0.context;
            if (context == null) {
                kotlin.jvm.internal.m.s("context");
                context = null;
            }
            j0.i sharedPreferencesDataStore = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(c10, this.$value, null);
            this.label = 1;
            if (o0.i.a(sharedPreferencesDataStore, anonymousClass1, this) == e10) {
                return e10;
            }
        }
        return xc.t.f32733a;
    }

    @Override // id.Function2
    public final Object invoke(l0 l0Var, ad.e eVar) {
        return ((SharedPreferencesPlugin$setDouble$1) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
    }
}
