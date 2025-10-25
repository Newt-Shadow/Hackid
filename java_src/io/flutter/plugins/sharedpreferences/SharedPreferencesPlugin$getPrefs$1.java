package io.flutter.plugins.sharedpreferences;
/* JADX INFO: Access modifiers changed from: package-private */
@kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", f = "SharedPreferencesPlugin.kt", l = {256, 258}, m = "getPrefs")
/* loaded from: classes2.dex */
public final class SharedPreferencesPlugin$getPrefs$1 extends kotlin.coroutines.jvm.internal.d {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SharedPreferencesPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin$getPrefs$1(SharedPreferencesPlugin sharedPreferencesPlugin, ad.e eVar) {
        super(eVar);
        this.this$0 = sharedPreferencesPlugin;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final Object invokeSuspend(Object obj) {
        Object prefs;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        prefs = this.this$0.getPrefs(null, this);
        return prefs;
    }
}
