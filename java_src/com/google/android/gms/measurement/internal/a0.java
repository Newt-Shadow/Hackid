package com.google.android.gms.measurement.internal;

import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class a0 extends a8 {

    /* renamed from: c  reason: collision with root package name */
    private long f7211c;

    /* renamed from: d  reason: collision with root package name */
    private String f7212d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(w6 w6Var) {
        super(w6Var);
    }

    @Override // com.google.android.gms.measurement.internal.a8
    protected final boolean i() {
        Calendar calendar = Calendar.getInstance();
        this.f7211c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb2.append(lowerCase);
        sb2.append("-");
        sb2.append(lowerCase2);
        this.f7212d = sb2.toString();
        return false;
    }

    public final long o() {
        l();
        return this.f7211c;
    }

    public final String p() {
        l();
        return this.f7212d;
    }
}
