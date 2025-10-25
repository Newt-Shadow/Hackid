package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class k {

    /* renamed from: a  reason: collision with root package name */
    private final Object f7032a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f7033b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f7034c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Object obj, Object obj2, Object obj3) {
        this.f7032a = obj;
        this.f7033b = obj2;
        this.f7034c = obj3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final IllegalArgumentException a() {
        Object obj = this.f7034c;
        Object obj2 = this.f7033b;
        Object obj3 = this.f7032a;
        String valueOf = String.valueOf(obj3);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(obj3);
        String valueOf4 = String.valueOf(obj);
        return new IllegalArgumentException("Multiple entries with same key: " + valueOf + "=" + valueOf2 + " and " + valueOf3 + "=" + valueOf4);
    }
}
