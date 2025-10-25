package io.appmetrica.analytics.ndkcrashesapi.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class NativeCrash {

    /* renamed from: a  reason: collision with root package name */
    private final NativeCrashSource f21201a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21202b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21203c;

    /* renamed from: d  reason: collision with root package name */
    private final String f21204d;

    /* renamed from: e  reason: collision with root package name */
    private final long f21205e;

    /* renamed from: f  reason: collision with root package name */
    private final String f21206f;

    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final NativeCrashSource f21207a;

        /* renamed from: b  reason: collision with root package name */
        private final String f21208b;

        /* renamed from: c  reason: collision with root package name */
        private final String f21209c;

        /* renamed from: d  reason: collision with root package name */
        private final String f21210d;

        /* renamed from: e  reason: collision with root package name */
        private final long f21211e;

        /* renamed from: f  reason: collision with root package name */
        private final String f21212f;

        public Builder(NativeCrashSource nativeCrashSource, String str, String str2, String str3, long j10, String str4) {
            this.f21207a = nativeCrashSource;
            this.f21208b = str;
            this.f21209c = str2;
            this.f21210d = str3;
            this.f21211e = j10;
            this.f21212f = str4;
        }

        public final NativeCrash build() {
            return new NativeCrash(this.f21207a, this.f21208b, this.f21209c, this.f21210d, this.f21211e, this.f21212f, null);
        }
    }

    public /* synthetic */ NativeCrash(NativeCrashSource nativeCrashSource, String str, String str2, String str3, long j10, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        this(nativeCrashSource, str, str2, str3, j10, str4);
    }

    public final long getCreationTime() {
        return this.f21205e;
    }

    public final String getDumpFile() {
        return this.f21204d;
    }

    public final String getHandlerVersion() {
        return this.f21202b;
    }

    public final String getMetadata() {
        return this.f21206f;
    }

    public final NativeCrashSource getSource() {
        return this.f21201a;
    }

    public final String getUuid() {
        return this.f21203c;
    }

    private NativeCrash(NativeCrashSource nativeCrashSource, String str, String str2, String str3, long j10, String str4) {
        this.f21201a = nativeCrashSource;
        this.f21202b = str;
        this.f21203c = str2;
        this.f21204d = str3;
        this.f21205e = j10;
        this.f21206f = str4;
    }
}
