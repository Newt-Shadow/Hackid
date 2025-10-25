package io.flutter.plugins.sharedpreferences;

import id.Function2;
import java.util.List;
import td.l0;
@kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getKeys$prefs$1", f = "SharedPreferencesPlugin.kt", l = {248}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SharedPreferencesPlugin$getKeys$prefs$1 extends kotlin.coroutines.jvm.internal.k implements Function2 {
    final /* synthetic */ List<String> $allowList;
    int label;
    final /* synthetic */ SharedPreferencesPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin$getKeys$prefs$1(SharedPreferencesPlugin sharedPreferencesPlugin, List<String> list, ad.e eVar) {
        super(2, eVar);
        this.this$0 = sharedPreferencesPlugin;
        this.$allowList = list;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final ad.e create(Object obj, ad.e eVar) {
        return new SharedPreferencesPlugin$getKeys$prefs$1(this.this$0, this.$allowList, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final Object invokeSuspend(Object obj) {
        Object e10;
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
            List<String> list = this.$allowList;
            this.label = 1;
            obj = sharedPreferencesPlugin.getPrefs(list, this);
            if (obj == e10) {
                return e10;
            }
        }
        return obj;
    }

    @Override // id.Function2
    public final Object invoke(l0 l0Var, ad.e eVar) {
        return ((SharedPreferencesPlugin$getKeys$prefs$1) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
    }
}
