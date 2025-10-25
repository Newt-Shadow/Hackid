package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.hk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0590hk {

    /* renamed from: a  reason: collision with root package name */
    private final C0490dk f12556a;

    /* renamed from: b  reason: collision with root package name */
    private final C0440bk f12557b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0590hk(Context context) {
        this(new C0490dk(context), new C0440bk());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Wk a(Activity activity, C0541fl c0541fl) {
        if (c0541fl == null) {
            return Wk.NULL_UI_ACCESS_CONFIG;
        }
        if (!c0541fl.f12422a) {
            return Wk.UI_PARING_FEATURE_DISABLED;
        }
        C0957wl c0957wl = c0541fl.f12426e;
        if (c0957wl == null) {
            return Wk.NULL_UI_PARSING_CONFIG;
        }
        if (this.f12556a.a(activity, c0957wl)) {
            return Wk.FORBIDDEN_FOR_APP;
        }
        if (this.f12557b.a(activity, c0541fl.f12426e)) {
            return Wk.FORBIDDEN_FOR_ACTIVITY;
        }
        return Wk.OK;
    }

    C0590hk(C0490dk c0490dk, C0440bk c0440bk) {
        this.f12556a = c0490dk;
        this.f12557b = c0440bk;
    }
}
