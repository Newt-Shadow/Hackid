package io.sentry;

import org.apache.tika.mime.MimeTypes;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f22889a;

    /* renamed from: b  reason: collision with root package name */
    private final q1 f22890b;

    /* renamed from: c  reason: collision with root package name */
    private String f22891c;

    /* renamed from: d  reason: collision with root package name */
    private final String f22892d;

    /* renamed from: e  reason: collision with root package name */
    private final String f22893e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f22894f;

    /* renamed from: g  reason: collision with root package name */
    private String f22895g;

    public b(byte[] bArr, String str, String str2, boolean z10) {
        this(bArr, str, str2, "event.attachment", z10);
    }

    public static b a(byte[] bArr) {
        return new b(bArr, "screenshot.png", "image/png", false);
    }

    public static b b(byte[] bArr) {
        return new b(bArr, "thread-dump.txt", MimeTypes.PLAIN_TEXT, false);
    }

    public static b c(io.sentry.protocol.c0 c0Var) {
        return new b((q1) c0Var, "view-hierarchy.json", "application/json", "event.view_hierarchy", false);
    }

    public String d() {
        return this.f22895g;
    }

    public byte[] e() {
        return this.f22889a;
    }

    public String f() {
        return this.f22893e;
    }

    public String g() {
        return this.f22892d;
    }

    public String h() {
        return this.f22891c;
    }

    public q1 i() {
        return this.f22890b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.f22894f;
    }

    public b(byte[] bArr, String str, String str2, String str3, boolean z10) {
        this.f22889a = bArr;
        this.f22890b = null;
        this.f22892d = str;
        this.f22893e = str2;
        this.f22895g = str3;
        this.f22894f = z10;
    }

    public b(q1 q1Var, String str, String str2, String str3, boolean z10) {
        this.f22889a = null;
        this.f22890b = q1Var;
        this.f22892d = str;
        this.f22893e = str2;
        this.f22895g = str3;
        this.f22894f = z10;
    }
}
