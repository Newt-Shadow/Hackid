package com.google.android.gms.internal.play_billing;

import java.io.IOException;
/* loaded from: classes.dex */
public class l2 extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private f3 f7045a;

    public l2(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.f7045a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k2 a() {
        return new k2("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l2 b() {
        return new l2("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l2 c() {
        return new l2("Protocol message had invalid UTF-8.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l2 d() {
        return new l2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l2 e() {
        return new l2("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l2 g() {
        return new l2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final l2 f(f3 f3Var) {
        this.f7045a = f3Var;
        return this;
    }

    public l2(String str) {
        super(str);
        this.f7045a = null;
    }
}
