package com.posthog;

import java.util.Date;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import nb.a;
import z8.c;
/* loaded from: classes.dex */
public final class PostHogEvent {
    @c("api_key")
    private String apiKey;
    @c("distinct_id")
    private final String distinctId;
    private final String event;
    @c("message_id")
    private final UUID messageId;
    private final Map<String, Object> properties;
    @c("$set")
    private final Map<String, Object> set;
    private final Date timestamp;
    private final String type;
    private final UUID uuid;

    public PostHogEvent(String event, String distinctId, Map<String, Object> map, Date timestamp, UUID uuid, String str, UUID uuid2, Map<String, ? extends Object> map2, String str2) {
        m.e(event, "event");
        m.e(distinctId, "distinctId");
        m.e(timestamp, "timestamp");
        this.event = event;
        this.distinctId = distinctId;
        this.properties = map;
        this.timestamp = timestamp;
        this.uuid = uuid;
        this.type = str;
        this.messageId = uuid2;
        this.set = map2;
        this.apiKey = str2;
    }

    public static /* synthetic */ void getMessageId$annotations() {
    }

    public static /* synthetic */ void getSet$annotations() {
    }

    public static /* synthetic */ void getType$annotations() {
    }

    public final String component1() {
        return this.event;
    }

    public final String component2() {
        return this.distinctId;
    }

    public final Map<String, Object> component3() {
        return this.properties;
    }

    public final Date component4() {
        return this.timestamp;
    }

    public final UUID component5() {
        return this.uuid;
    }

    public final String component6() {
        return this.type;
    }

    public final UUID component7() {
        return this.messageId;
    }

    public final Map<String, Object> component8() {
        return this.set;
    }

    public final String component9() {
        return this.apiKey;
    }

    public final PostHogEvent copy(String event, String distinctId, Map<String, Object> map, Date timestamp, UUID uuid, String str, UUID uuid2, Map<String, ? extends Object> map2, String str2) {
        m.e(event, "event");
        m.e(distinctId, "distinctId");
        m.e(timestamp, "timestamp");
        return new PostHogEvent(event, distinctId, map, timestamp, uuid, str, uuid2, map2, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PostHogEvent) {
            PostHogEvent postHogEvent = (PostHogEvent) obj;
            return m.a(this.event, postHogEvent.event) && m.a(this.distinctId, postHogEvent.distinctId) && m.a(this.properties, postHogEvent.properties) && m.a(this.timestamp, postHogEvent.timestamp) && m.a(this.uuid, postHogEvent.uuid) && m.a(this.type, postHogEvent.type) && m.a(this.messageId, postHogEvent.messageId) && m.a(this.set, postHogEvent.set) && m.a(this.apiKey, postHogEvent.apiKey);
        }
        return false;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final String getDistinctId() {
        return this.distinctId;
    }

    public final String getEvent() {
        return this.event;
    }

    public final UUID getMessageId() {
        return this.messageId;
    }

    public final Map<String, Object> getProperties() {
        return this.properties;
    }

    public final Map<String, Object> getSet() {
        return this.set;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }

    public final String getType() {
        return this.type;
    }

    public final UUID getUuid() {
        return this.uuid;
    }

    public int hashCode() {
        int hashCode = ((this.event.hashCode() * 31) + this.distinctId.hashCode()) * 31;
        Map<String, Object> map = this.properties;
        int hashCode2 = (((hashCode + (map == null ? 0 : map.hashCode())) * 31) + this.timestamp.hashCode()) * 31;
        UUID uuid = this.uuid;
        int hashCode3 = (hashCode2 + (uuid == null ? 0 : uuid.hashCode())) * 31;
        String str = this.type;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        UUID uuid2 = this.messageId;
        int hashCode5 = (hashCode4 + (uuid2 == null ? 0 : uuid2.hashCode())) * 31;
        Map<String, Object> map2 = this.set;
        int hashCode6 = (hashCode5 + (map2 == null ? 0 : map2.hashCode())) * 31;
        String str2 = this.apiKey;
        return hashCode6 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setApiKey(String str) {
        this.apiKey = str;
    }

    public String toString() {
        return "PostHogEvent(event=" + this.event + ", distinctId=" + this.distinctId + ", properties=" + this.properties + ", timestamp=" + this.timestamp + ", uuid=" + this.uuid + ", type=" + this.type + ", messageId=" + this.messageId + ", set=" + this.set + ", apiKey=" + this.apiKey + ')';
    }

    public /* synthetic */ PostHogEvent(String str, String str2, Map map, Date date, UUID uuid, String str3, UUID uuid2, Map map2, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? null : map, (i10 & 8) != 0 ? new Date() : date, (i10 & 16) != 0 ? a.f26549a.c() : uuid, (i10 & 32) != 0 ? null : str3, (i10 & 64) != 0 ? null : uuid2, (i10 & 128) != 0 ? null : map2, (i10 & 256) != 0 ? null : str4);
    }
}
