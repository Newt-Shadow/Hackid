package com.posthog.internal;

import com.posthog.PostHogEvent;
import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import z8.c;
/* loaded from: classes.dex */
public final class PostHogBatchEvent {
    @c("api_key")
    private final String apiKey;
    private final List<PostHogEvent> batch;
    @c("sent_at")
    private Date sentAt;

    public PostHogBatchEvent(String apiKey, List<PostHogEvent> batch, Date date) {
        m.e(apiKey, "apiKey");
        m.e(batch, "batch");
        this.apiKey = apiKey;
        this.batch = batch;
        this.sentAt = date;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostHogBatchEvent copy$default(PostHogBatchEvent postHogBatchEvent, String str, List list, Date date, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = postHogBatchEvent.apiKey;
        }
        if ((i10 & 2) != 0) {
            list = postHogBatchEvent.batch;
        }
        if ((i10 & 4) != 0) {
            date = postHogBatchEvent.sentAt;
        }
        return postHogBatchEvent.copy(str, list, date);
    }

    public final String component1() {
        return this.apiKey;
    }

    public final List<PostHogEvent> component2() {
        return this.batch;
    }

    public final Date component3() {
        return this.sentAt;
    }

    public final PostHogBatchEvent copy(String apiKey, List<PostHogEvent> batch, Date date) {
        m.e(apiKey, "apiKey");
        m.e(batch, "batch");
        return new PostHogBatchEvent(apiKey, batch, date);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PostHogBatchEvent) {
            PostHogBatchEvent postHogBatchEvent = (PostHogBatchEvent) obj;
            return m.a(this.apiKey, postHogBatchEvent.apiKey) && m.a(this.batch, postHogBatchEvent.batch) && m.a(this.sentAt, postHogBatchEvent.sentAt);
        }
        return false;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final List<PostHogEvent> getBatch() {
        return this.batch;
    }

    public final Date getSentAt() {
        return this.sentAt;
    }

    public int hashCode() {
        int hashCode = ((this.apiKey.hashCode() * 31) + this.batch.hashCode()) * 31;
        Date date = this.sentAt;
        return hashCode + (date == null ? 0 : date.hashCode());
    }

    public final void setSentAt(Date date) {
        this.sentAt = date;
    }

    public String toString() {
        return "PostHogBatchEvent(apiKey=" + this.apiKey + ", batch=" + this.batch + ", sentAt=" + this.sentAt + ')';
    }

    public /* synthetic */ PostHogBatchEvent(String str, List list, Date date, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, (i10 & 4) != 0 ? null : date);
    }
}
