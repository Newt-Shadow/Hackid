package io.flutter.plugins.sharedpreferences;

import id.Function2;
import o0.f;
@kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$dataStoreSetString$2", f = "SharedPreferencesPlugin.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SharedPreferencesPlugin$dataStoreSetString$2 extends kotlin.coroutines.jvm.internal.k implements Function2 {
    final /* synthetic */ f.a $stringKey;
    final /* synthetic */ String $value;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin$dataStoreSetString$2(f.a aVar, String str, ad.e eVar) {
        super(2, eVar);
        this.$stringKey = aVar;
        this.$value = str;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final ad.e create(Object obj, ad.e eVar) {
        SharedPreferencesPlugin$dataStoreSetString$2 sharedPreferencesPlugin$dataStoreSetString$2 = new SharedPreferencesPlugin$dataStoreSetString$2(this.$stringKey, this.$value, eVar);
        sharedPreferencesPlugin$dataStoreSetString$2.L$0 = obj;
        return sharedPreferencesPlugin$dataStoreSetString$2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final Object invokeSuspend(Object obj) {
        bd.d.e();
        if (this.label == 0) {
            xc.m.b(obj);
            ((o0.c) this.L$0).j(this.$stringKey, this.$value);
            return xc.t.f32733a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // id.Function2
    public final Object invoke(o0.c cVar, ad.e eVar) {
        return ((SharedPreferencesPlugin$dataStoreSetString$2) create(cVar, eVar)).invokeSuspend(xc.t.f32733a);
    }
}
