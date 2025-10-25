package io.flutter.plugins.sharedpreferences;

import id.Function2;
import td.l0;
@kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setString$1", f = "SharedPreferencesPlugin.kt", l = {87}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SharedPreferencesPlugin$setString$1 extends kotlin.coroutines.jvm.internal.k implements Function2 {
    final /* synthetic */ String $key;
    final /* synthetic */ String $value;
    int label;
    final /* synthetic */ SharedPreferencesPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin$setString$1(SharedPreferencesPlugin sharedPreferencesPlugin, String str, String str2, ad.e eVar) {
        super(2, eVar);
        this.this$0 = sharedPreferencesPlugin;
        this.$key = str;
        this.$value = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final ad.e create(Object obj, ad.e eVar) {
        return new SharedPreferencesPlugin$setString$1(this.this$0, this.$key, this.$value, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final Object invokeSuspend(Object obj) {
        Object e10;
        Object dataStoreSetString;
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
            SharedPreferencesPlugin sharedPreferencesPlugin = this.this$0;
            String str = this.$key;
            String str2 = this.$value;
            this.label = 1;
            dataStoreSetString = sharedPreferencesPlugin.dataStoreSetString(str, str2, this);
            if (dataStoreSetString == e10) {
                return e10;
            }
        }
        return xc.t.f32733a;
    }

    @Override // id.Function2
    public final Object invoke(l0 l0Var, ad.e eVar) {
        return ((SharedPreferencesPlugin$setString$1) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
    }
}
