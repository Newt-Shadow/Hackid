package com.yandex.metrica.coreutils.logger;

import android.util.Log;
/* loaded from: classes.dex */
public abstract class a {
    private volatile boolean mIsEnabled;

    public a(boolean z10) {
        this.mIsEnabled = false;
        this.mIsEnabled = z10;
    }

    private String a(String str, Object[] objArr) {
        try {
            return getPrefix() + formatMessage(c(str), objArr);
        } catch (Throwable unused) {
            return onFormatException();
        }
    }

    private String b(String str) {
        return getPrefix() + c(str);
    }

    private static String c(String str) {
        return str == null ? "" : str;
    }

    public void d(String str) {
        log(3, c(str));
    }

    public void e(String str) {
        log(6, str);
    }

    public void fd(String str, Object... objArr) {
        log(3, c(str), objArr);
    }

    public void fe(String str, Object... objArr) {
        log(6, str, objArr);
    }

    public void fi(String str, Object... objArr) {
        log(4, str, objArr);
    }

    public void forceE(Throwable th, String str, Object... objArr) {
        String tag = getTag();
        Log.println(6, tag, a(str, objArr) + "\n" + Log.getStackTraceString(th));
    }

    public void forceI(String str, Object... objArr) {
        Log.println(4, getTag(), a(str, objArr));
    }

    public void forceW(String str, Object... objArr) {
        Log.println(5, getTag(), a(str, objArr));
    }

    protected abstract String formatMessage(String str, Object[] objArr);

    public void fw(String str, Object... objArr) {
        log(5, str, objArr);
    }

    protected abstract String getPrefix();

    protected abstract String getTag();

    public void i(String str) {
        log(4, str);
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    void log(int i10, String str) {
        if (shouldLog()) {
            Log.println(i10, getTag(), b(str));
        }
    }

    String onFormatException() {
        return getPrefix();
    }

    public void setDisabled() {
        this.mIsEnabled = false;
    }

    public void setEnabled() {
        this.mIsEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldLog() {
        return this.mIsEnabled;
    }

    public void w(String str) {
        log(5, str);
    }

    public void e(Throwable th, String str) {
        log(6, th, str);
    }

    public void fe(Throwable th, String str, Object... objArr) {
        log(6, th, str, objArr);
    }

    void log(int i10, String str, Object... objArr) {
        if (shouldLog()) {
            Log.println(i10, getTag(), a(str, objArr));
        }
    }

    void log(int i10, Throwable th, String str) {
        if (shouldLog()) {
            String tag = getTag();
            Log.println(i10, tag, b(str) + "\n" + Log.getStackTraceString(th));
        }
    }

    void log(int i10, Throwable th, String str, Object... objArr) {
        if (shouldLog()) {
            String tag = getTag();
            Log.println(i10, tag, a(str, objArr) + "\n" + Log.getStackTraceString(th));
        }
    }
}
