package io.appmetrica.analytics;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ModuleEvent {

    /* renamed from: a  reason: collision with root package name */
    private final int f17504a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17505b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17506c;

    /* renamed from: d  reason: collision with root package name */
    private final int f17507d;

    /* renamed from: e  reason: collision with root package name */
    private final Category f17508e;

    /* renamed from: f  reason: collision with root package name */
    private final List f17509f;

    /* renamed from: g  reason: collision with root package name */
    private final List f17510g;

    /* renamed from: h  reason: collision with root package name */
    private final List f17511h;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final int f17512a;

        /* renamed from: b  reason: collision with root package name */
        private String f17513b;

        /* renamed from: c  reason: collision with root package name */
        private String f17514c;

        /* renamed from: d  reason: collision with root package name */
        private int f17515d;

        /* renamed from: e  reason: collision with root package name */
        private Category f17516e;

        /* renamed from: f  reason: collision with root package name */
        private HashMap f17517f;

        /* renamed from: g  reason: collision with root package name */
        private HashMap f17518g;

        /* renamed from: h  reason: collision with root package name */
        private HashMap f17519h;

        /* synthetic */ Builder(int i10, int i11) {
            this(i10);
        }

        public ModuleEvent build() {
            return new ModuleEvent(this, 0);
        }

        public Builder withAttributes(Map<String, Object> map) {
            if (map != null) {
                this.f17519h = new HashMap(map);
            }
            return this;
        }

        public Builder withCategory(Category category) {
            this.f17516e = category;
            return this;
        }

        public Builder withEnvironment(Map<String, Object> map) {
            if (map != null) {
                this.f17517f = new HashMap(map);
            }
            return this;
        }

        public Builder withExtras(Map<String, byte[]> map) {
            if (map != null) {
                this.f17518g = new HashMap(map);
            }
            return this;
        }

        public Builder withName(String str) {
            this.f17513b = str;
            return this;
        }

        public Builder withServiceDataReporterType(int i10) {
            this.f17515d = i10;
            return this;
        }

        public Builder withValue(String str) {
            this.f17514c = str;
            return this;
        }

        private Builder(int i10) {
            this.f17515d = 1;
            this.f17516e = Category.GENERAL;
            this.f17512a = i10;
        }
    }

    /* loaded from: classes2.dex */
    public enum Category {
        GENERAL,
        SYSTEM
    }

    /* synthetic */ ModuleEvent(Builder builder, int i10) {
        this(builder);
    }

    public static Builder newBuilder(int i10) {
        return new Builder(i10, 0);
    }

    public Map<String, Object> getAttributes() {
        return CollectionUtils.getMapFromListOrNull(this.f17511h);
    }

    public Category getCategory() {
        return this.f17508e;
    }

    public Map<String, Object> getEnvironment() {
        return CollectionUtils.getMapFromListOrNull(this.f17509f);
    }

    public Map<String, byte[]> getExtras() {
        return CollectionUtils.getMapFromListOrNull(this.f17510g);
    }

    public String getName() {
        return this.f17505b;
    }

    public int getServiceDataReporterType() {
        return this.f17507d;
    }

    public int getType() {
        return this.f17504a;
    }

    public String getValue() {
        return this.f17506c;
    }

    public String toString() {
        return "ModuleEvent{type=" + this.f17504a + ", name='" + this.f17505b + "', value='" + this.f17506c + "', serviceDataReporterType=" + this.f17507d + ", category=" + this.f17508e + ", environment=" + this.f17509f + ", extras=" + this.f17510g + ", attributes=" + this.f17511h + '}';
    }

    private ModuleEvent(Builder builder) {
        this.f17504a = builder.f17512a;
        this.f17505b = builder.f17513b;
        this.f17506c = builder.f17514c;
        this.f17507d = builder.f17515d;
        this.f17508e = builder.f17516e;
        this.f17509f = CollectionUtils.getListFromMap(builder.f17517f);
        this.f17510g = CollectionUtils.getListFromMap(builder.f17518g);
        this.f17511h = CollectionUtils.getListFromMap(builder.f17519h);
    }
}
