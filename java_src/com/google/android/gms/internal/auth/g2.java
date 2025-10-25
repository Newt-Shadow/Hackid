package com.google.android.gms.internal.auth;

import java.io.IOException;
/* loaded from: classes.dex */
public final class g2 extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private y2 f6018a;

    public g2(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.f6018a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g2 a() {
        return new g2("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g2 b() {
        return new g2("Protocol message had invalid UTF-8.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g2 c() {
        return new g2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g2 d() {
        return new g2("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g2 f() {
        return new g2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final g2 e(y2 y2Var) {
        this.f6018a = y2Var;
        return this;
    }

    public g2(String str) {
        super(str);
        this.f6018a = null;
    }
}
