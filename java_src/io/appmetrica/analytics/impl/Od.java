package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final /* synthetic */ class Od extends kotlin.jvm.internal.k implements id.l {
    public Od(Pd pd2) {
        super(1, pd2, Pd.class, "markCrashCompletedAndDeleteCompletedCrashes", "markCrashCompletedAndDeleteCompletedCrashes(Ljava/lang/String;)V", 0);
    }

    @Override // id.l
    public final Object invoke(Object obj) {
        Pd pd2 = (Pd) this.receiver;
        pd2.f18778a.markCrashCompleted((String) obj);
        pd2.f18778a.deleteCompletedCrashes();
        return xc.t.f32733a;
    }
}
