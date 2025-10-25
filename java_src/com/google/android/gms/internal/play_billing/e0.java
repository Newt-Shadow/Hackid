package com.google.android.gms.internal.play_billing;

import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f6971a = "0123456789abcdef".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f6972b = 0;

    public abstract int a();

    public abstract int b();

    abstract boolean c(e0 e0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] d();

    public final boolean equals(Object obj) {
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            if (b() == e0Var.b() && c(e0Var)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (b() >= 32) {
            return a();
        }
        byte[] d10 = d();
        int i10 = d10[0] & ForkServer.ERROR;
        for (int i11 = 1; i11 < d10.length; i11++) {
            i10 |= (d10[i11] & ForkServer.ERROR) << (i11 * 8);
        }
        return i10;
    }

    public final String toString() {
        byte[] d10 = d();
        int length = d10.length;
        StringBuilder sb2 = new StringBuilder(length + length);
        for (byte b10 : d10) {
            char[] cArr = f6971a;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
