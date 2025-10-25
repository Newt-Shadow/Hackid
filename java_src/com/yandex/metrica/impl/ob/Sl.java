package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Sl extends Vl {

    /* renamed from: c  reason: collision with root package name */
    private static final Sl f11367c = new Sl("");

    public Sl(String str) {
        super(str);
    }

    public static Sl a() {
        return f11367c;
    }

    @Override // com.yandex.metrica.coreutils.logger.a
    public String getTag() {
        return "AppMetricaInternal";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yandex.metrica.coreutils.logger.a
    public boolean shouldLog() {
        super.shouldLog();
        return false;
    }

    private Sl() {
        this("");
    }
}
