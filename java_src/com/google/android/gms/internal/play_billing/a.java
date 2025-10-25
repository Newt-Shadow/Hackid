package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public enum a {
    RESPONSE_CODE_UNSPECIFIED(-999),
    SERVICE_TIMEOUT(-3),
    FEATURE_NOT_SUPPORTED(-2),
    SERVICE_DISCONNECTED(-1),
    OK(0),
    USER_CANCELED(1),
    SERVICE_UNAVAILABLE(2),
    BILLING_UNAVAILABLE(3),
    ITEM_UNAVAILABLE(4),
    DEVELOPER_ERROR(5),
    ERROR(6),
    ITEM_ALREADY_OWNED(7),
    ITEM_NOT_OWNED(8),
    EXPIRED_OFFER_TOKEN(11),
    NETWORK_ERROR(12);
    

    /* renamed from: q  reason: collision with root package name */
    private static final m f6948q;

    /* renamed from: a  reason: collision with root package name */
    private final int f6950a;

    static {
        a[] values;
        l lVar = new l();
        for (a aVar : values()) {
            lVar.a(Integer.valueOf(aVar.f6950a), aVar);
        }
        f6948q = lVar.b();
    }

    a(int i10) {
        this.f6950a = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(int i10) {
        m mVar = f6948q;
        Integer valueOf = Integer.valueOf(i10);
        if (!mVar.containsKey(valueOf)) {
            return RESPONSE_CODE_UNSPECIFIED;
        }
        return (a) mVar.get(valueOf);
    }
}
