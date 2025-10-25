package io.appmetrica.analytics;

import java.util.Objects;
/* loaded from: classes2.dex */
public final class StartupParamsItem {

    /* renamed from: a  reason: collision with root package name */
    private final String f17547a;

    /* renamed from: b  reason: collision with root package name */
    private final StartupParamsItemStatus f17548b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17549c;

    public StartupParamsItem(String str, StartupParamsItemStatus startupParamsItemStatus, String str2) {
        this.f17547a = str;
        this.f17548b = startupParamsItemStatus;
        this.f17549c = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StartupParamsItem.class != obj.getClass()) {
            return false;
        }
        StartupParamsItem startupParamsItem = (StartupParamsItem) obj;
        if (Objects.equals(this.f17547a, startupParamsItem.f17547a) && this.f17548b == startupParamsItem.f17548b && Objects.equals(this.f17549c, startupParamsItem.f17549c)) {
            return true;
        }
        return false;
    }

    public String getErrorDetails() {
        return this.f17549c;
    }

    public String getId() {
        return this.f17547a;
    }

    public StartupParamsItemStatus getStatus() {
        return this.f17548b;
    }

    public int hashCode() {
        return Objects.hash(this.f17547a, this.f17548b, this.f17549c);
    }

    public String toString() {
        return "StartupParamsItem{id='" + this.f17547a + "', status=" + this.f17548b + ", errorDetails='" + this.f17549c + "'}";
    }
}
