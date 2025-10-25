package io.sentry.clientreport;

import io.sentry.util.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final String f22993a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22994b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2) {
        this.f22993a = str;
        this.f22994b = str2;
    }

    public String a() {
        return this.f22994b;
    }

    public String b() {
        return this.f22993a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (q.a(b(), dVar.b()) && q.a(a(), dVar.a())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return q.b(b(), a());
    }
}
