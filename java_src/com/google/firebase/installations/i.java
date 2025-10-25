package com.google.firebase.installations;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    public static final long f8800b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f8801c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d  reason: collision with root package name */
    private static i f8802d;

    /* renamed from: a  reason: collision with root package name */
    private final o8.a f8803a;

    private i(o8.a aVar) {
        this.f8803a = aVar;
    }

    public static i c() {
        return d(o8.b.a());
    }

    public static i d(o8.a aVar) {
        if (f8802d == null) {
            f8802d = new i(aVar);
        }
        return f8802d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(String str) {
        return f8801c.matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(String str) {
        return str.contains(":");
    }

    public long a() {
        return this.f8803a.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(m8.d dVar) {
        if (TextUtils.isEmpty(dVar.b()) || dVar.h() + dVar.c() < b() + f8800b) {
            return true;
        }
        return false;
    }
}
