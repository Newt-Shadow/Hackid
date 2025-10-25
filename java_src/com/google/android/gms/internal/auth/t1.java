package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
public abstract class t1 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f6169a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ t1(s1 s1Var) {
    }

    public static int a(int i10) {
        return (i10 >>> 1) ^ (-(i10 & 1));
    }

    public static long b(long j10) {
        return (j10 >>> 1) ^ (-(1 & j10));
    }
}
