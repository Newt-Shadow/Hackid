package com.google.android.gms.measurement.internal;
/* loaded from: classes.dex */
enum n {
    UNSET('0'),
    REMOTE_DEFAULT('1'),
    REMOTE_DELEGATION('2'),
    MANIFEST('3'),
    INITIALIZATION('4'),
    API('5'),
    CHILD_ACCOUNT('6'),
    TCF('7'),
    REMOTE_ENFORCED_DEFAULT('8'),
    FAILSAFE('9');
    

    /* renamed from: a  reason: collision with root package name */
    private final char f7784a;

    n(char c10) {
        this.f7784a = c10;
    }

    public static n a(char c10) {
        n[] values;
        for (n nVar : values()) {
            if (nVar.f7784a == c10) {
                return nVar;
            }
        }
        return UNSET;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ char b() {
        return this.f7784a;
    }
}
