package io.appmetrica.analytics.modulesapi.internal.common;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class InternalModuleEvent {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f21184a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21185b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21186c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f21187d;

    /* renamed from: e  reason: collision with root package name */
    private final Category f21188e;

    /* renamed from: f  reason: collision with root package name */
    private final List f21189f;

    /* renamed from: g  reason: collision with root package name */
    private final List f21190g;

    /* renamed from: h  reason: collision with root package name */
    private final List f21191h;

    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final int f21192a;

        /* renamed from: b  reason: collision with root package name */
        private String f21193b;

        /* renamed from: c  reason: collision with root package name */
        private String f21194c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f21195d;

        /* renamed from: e  reason: collision with root package name */
        private Category f21196e;

        /* renamed from: f  reason: collision with root package name */
        private Map f21197f;

        /* renamed from: g  reason: collision with root package name */
        private Map f21198g;

        /* renamed from: h  reason: collision with root package name */
        private Map f21199h;

        public Builder(int i10) {
            this.f21192a = i10;
        }

        public InternalModuleEvent build() {
            return new InternalModuleEvent(this, null);
        }

        public final Map<String, Object> getAttributes() {
            return this.f21199h;
        }

        public final Category getCategory() {
            return this.f21196e;
        }

        public final Map<String, Object> getEnvironment() {
            return this.f21197f;
        }

        public final Map<String, byte[]> getExtras() {
            return this.f21198g;
        }

        public final String getName() {
            return this.f21193b;
        }

        public final Integer getServiceDataReporterType() {
            return this.f21195d;
        }

        public final int getType$modules_api_release() {
            return this.f21192a;
        }

        public final String getValue() {
            return this.f21194c;
        }

        public final void setAttributes(Map<String, ? extends Object> map) {
            this.f21199h = map;
        }

        public final void setCategory(Category category) {
            this.f21196e = category;
        }

        public final void setEnvironment(Map<String, ? extends Object> map) {
            this.f21197f = map;
        }

        public final void setExtras(Map<String, byte[]> map) {
            this.f21198g = map;
        }

        public final void setName(String str) {
            this.f21193b = str;
        }

        public final void setServiceDataReporterType(Integer num) {
            this.f21195d = num;
        }

        public final void setValue(String str) {
            this.f21194c = str;
        }

        public final Builder withAttributes(Map<String, ? extends Object> map) {
            if (map != null) {
                this.f21199h = new HashMap(map);
            }
            return this;
        }

        public final Builder withCategory(Category category) {
            this.f21196e = category;
            return this;
        }

        public final Builder withEnvironment(Map<String, ? extends Object> map) {
            if (map != null) {
                this.f21197f = new HashMap(map);
            }
            return this;
        }

        public final Builder withExtras(Map<String, byte[]> map) {
            if (map != null) {
                this.f21198g = new HashMap(map);
            }
            return this;
        }

        public final Builder withName(String str) {
            this.f21193b = str;
            return this;
        }

        public final Builder withServiceDataReporterType(int i10) {
            this.f21195d = Integer.valueOf(i10);
            return this;
        }

        public final Builder withValue(String str) {
            this.f21194c = str;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public enum Category {
        GENERAL,
        SYSTEM
    }

    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Builder newBuilder(int i10) {
            return new Builder(i10);
        }

        private Companion() {
        }
    }

    public /* synthetic */ InternalModuleEvent(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    public static final Builder newBuilder(int i10) {
        return Companion.newBuilder(i10);
    }

    public final Map<String, Object> getAttributes() {
        return CollectionUtils.getMapFromListOrNull(this.f21191h);
    }

    public final Category getCategory() {
        return this.f21188e;
    }

    public final Map<String, Object> getEnvironment() {
        return CollectionUtils.getMapFromListOrNull(this.f21189f);
    }

    public final Map<String, byte[]> getExtras() {
        return CollectionUtils.getMapFromListOrNull(this.f21190g);
    }

    public final String getName() {
        return this.f21185b;
    }

    public final Integer getServiceDataReporterType() {
        return this.f21187d;
    }

    public final int getType() {
        return this.f21184a;
    }

    public final String getValue() {
        return this.f21186c;
    }

    public String toString() {
        return "ModuleEvent{type=" + this.f21184a + ", name='" + this.f21185b + "', value='" + this.f21186c + "', serviceDataReporterType=" + this.f21187d + ", category=" + this.f21188e + ", environment=" + this.f21189f + ", extras=" + this.f21190g + ", attributes=" + this.f21191h + '}';
    }

    private InternalModuleEvent(Builder builder) {
        this.f21184a = builder.getType$modules_api_release();
        this.f21185b = builder.getName();
        this.f21186c = builder.getValue();
        this.f21187d = builder.getServiceDataReporterType();
        this.f21188e = builder.getCategory();
        this.f21189f = CollectionUtils.getListFromMap(builder.getEnvironment());
        this.f21190g = CollectionUtils.getListFromMap(builder.getExtras());
        this.f21191h = CollectionUtils.getListFromMap(builder.getAttributes());
    }
}
