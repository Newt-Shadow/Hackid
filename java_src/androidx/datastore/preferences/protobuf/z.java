package androidx.datastore.preferences.protobuf;

import java.io.IOException;
/* loaded from: classes.dex */
public class z extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private p0 f2393a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2394b;

    /* loaded from: classes.dex */
    public static class a extends z {
        public a(String str) {
            super(str);
        }
    }

    public z(String str) {
        super(str);
        this.f2393a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z b() {
        return new z("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z c() {
        return new z("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z d() {
        return new z("Protocol message had invalid UTF-8.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a e() {
        return new a("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z f() {
        return new z("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z g() {
        return new z("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z h() {
        return new z("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z i() {
        return new z("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z l() {
        return new z("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z m() {
        return new z("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f2394b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.f2394b = true;
    }

    public z k(p0 p0Var) {
        this.f2393a = p0Var;
        return this;
    }

    public z(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.f2393a = null;
    }
}
