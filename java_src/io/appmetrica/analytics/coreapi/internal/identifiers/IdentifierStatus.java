package io.appmetrica.analytics.coreapi.internal.identifiers;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public enum IdentifierStatus {
    OK("OK"),
    IDENTIFIER_PROVIDER_UNAVAILABLE("IDENTIFIER_PROVIDER_UNAVAILABLE"),
    INVALID_ADV_ID("INVALID_ADV_ID"),
    NO_STARTUP("NO_STARTUP"),
    FORBIDDEN_BY_CLIENT_CONFIG("FORBIDDEN_BY_CLIENT_CONFIG"),
    FEATURE_DISABLED("FEATURE_DISABLED"),
    UNKNOWN("UNKNOWN");
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f17653a;

    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IdentifierStatus from(String str) {
            IdentifierStatus identifierStatus;
            IdentifierStatus[] values = IdentifierStatus.values();
            int length = values.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    identifierStatus = values[i10];
                    if (m.a(identifierStatus.getValue(), str)) {
                        break;
                    }
                    i10++;
                } else {
                    identifierStatus = null;
                    break;
                }
            }
            if (identifierStatus == null) {
                return IdentifierStatus.UNKNOWN;
            }
            return identifierStatus;
        }

        private Companion() {
        }
    }

    IdentifierStatus(String str) {
        this.f17653a = str;
    }

    public static final IdentifierStatus from(String str) {
        return Companion.from(str);
    }

    public final String getValue() {
        return this.f17653a;
    }
}
