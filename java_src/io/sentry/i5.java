package io.sentry;

import java.util.Locale;
/* loaded from: classes2.dex */
public enum i5 implements q1 {
    Session("session"),
    Event("event"),
    UserFeedback("user_report"),
    Attachment("attachment"),
    Transaction("transaction"),
    Profile("profile"),
    ClientReport("client_report"),
    ReplayEvent("replay_event"),
    ReplayRecording("replay_recording"),
    ReplayVideo("replay_video"),
    CheckIn("check_in"),
    Statsd("statsd"),
    Feedback("feedback"),
    Unknown("__unknown__");
    
    private final String itemType;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public i5 a(l2 l2Var, ILogger iLogger) {
            return i5.valueOfLabel(l2Var.C().toLowerCase(Locale.ROOT));
        }
    }

    i5(String str) {
        this.itemType = str;
    }

    public static i5 resolve(Object obj) {
        if (obj instanceof z4) {
            return Event;
        }
        if (obj instanceof io.sentry.protocol.y) {
            return Transaction;
        }
        if (obj instanceof f6) {
            return Session;
        }
        if (obj instanceof io.sentry.clientreport.c) {
            return ClientReport;
        }
        return Attachment;
    }

    public static i5 valueOfLabel(String str) {
        i5[] values;
        for (i5 i5Var : values()) {
            if (i5Var.itemType.equals(str)) {
                return i5Var;
            }
        }
        return Unknown;
    }

    public String getItemType() {
        return this.itemType;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.c(this.itemType);
    }
}
