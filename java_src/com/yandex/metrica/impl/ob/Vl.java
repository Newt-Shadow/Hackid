package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class Vl extends com.yandex.metrica.coreutils.logger.a {

    /* renamed from: b  reason: collision with root package name */
    private static String f11670b = "";

    /* renamed from: a  reason: collision with root package name */
    private final String f11671a;

    public Vl(String str) {
        super(false);
        this.f11671a = "[" + A2.a(str) + "] ";
    }

    public static void a(Context context) {
        f11670b = "[" + context.getPackageName() + "] : ";
    }

    @Override // com.yandex.metrica.coreutils.logger.a
    protected String formatMessage(String str, Object[] objArr) {
        return String.format(Locale.US, str, objArr);
    }

    @Override // com.yandex.metrica.coreutils.logger.a
    public String getPrefix() {
        String str = f11670b;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String str3 = this.f11671a;
        if (str3 != null) {
            str2 = str3;
        }
        return str + str2;
    }
}
