package org.apache.tika.pipes;

import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import org.apache.tika.sax.BasicContentHandlerFactory;
/* loaded from: classes2.dex */
public class HandlerConfig implements Serializable {
    public static final HandlerConfig DEFAULT_HANDLER_CONFIG = new HandlerConfig(BasicContentHandlerFactory.HANDLER_TYPE.TEXT, PARSE_MODE.RMETA, -1, -1, true);
    private static final long serialVersionUID = -3861669115439125268L;
    int maxEmbeddedResources;
    PARSE_MODE parseMode;
    boolean throwOnWriteLimitReached;
    private BasicContentHandlerFactory.HANDLER_TYPE type;
    int writeLimit;

    /* loaded from: classes2.dex */
    public enum PARSE_MODE {
        RMETA,
        CONCATENATE;

        public static PARSE_MODE parseMode(String str) {
            PARSE_MODE[] values;
            int i10 = 0;
            for (PARSE_MODE parse_mode : values()) {
                if (parse_mode.name().equalsIgnoreCase(str)) {
                    return parse_mode;
                }
            }
            StringBuilder sb2 = new StringBuilder();
            PARSE_MODE[] values2 = values();
            int length = values2.length;
            int i11 = 0;
            while (i10 < length) {
                PARSE_MODE parse_mode2 = values2[i10];
                int i12 = i11 + 1;
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(parse_mode2.name().toLowerCase(Locale.US));
                i10++;
                i11 = i12;
            }
            throw new IllegalArgumentException("mode must be one of: (" + ((Object) sb2) + "). I regret I do not understand: " + str);
        }
    }

    public HandlerConfig() {
        this.type = BasicContentHandlerFactory.HANDLER_TYPE.TEXT;
        this.writeLimit = -1;
        this.maxEmbeddedResources = -1;
        this.throwOnWriteLimitReached = true;
        this.parseMode = PARSE_MODE.RMETA;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HandlerConfig handlerConfig = (HandlerConfig) obj;
        if (this.writeLimit == handlerConfig.writeLimit && this.maxEmbeddedResources == handlerConfig.maxEmbeddedResources && this.throwOnWriteLimitReached == handlerConfig.throwOnWriteLimitReached && this.type == handlerConfig.type && this.parseMode == handlerConfig.parseMode) {
            return true;
        }
        return false;
    }

    public int getMaxEmbeddedResources() {
        return this.maxEmbeddedResources;
    }

    public PARSE_MODE getParseMode() {
        return this.parseMode;
    }

    public BasicContentHandlerFactory.HANDLER_TYPE getType() {
        return this.type;
    }

    public int getWriteLimit() {
        return this.writeLimit;
    }

    public int hashCode() {
        return (((((((Objects.hashCode(this.type) * 31) + this.writeLimit) * 31) + this.maxEmbeddedResources) * 31) + Boolean.hashCode(this.throwOnWriteLimitReached)) * 31) + Objects.hashCode(this.parseMode);
    }

    public boolean isThrowOnWriteLimitReached() {
        return this.throwOnWriteLimitReached;
    }

    public void setMaxEmbeddedResources(int i10) {
        this.maxEmbeddedResources = i10;
    }

    public void setParseMode(PARSE_MODE parse_mode) {
        this.parseMode = parse_mode;
    }

    public void setThrowOnWriteLimitReached(boolean z10) {
        this.throwOnWriteLimitReached = z10;
    }

    public void setType(BasicContentHandlerFactory.HANDLER_TYPE handler_type) {
        this.type = handler_type;
    }

    public void setWriteLimit(int i10) {
        this.writeLimit = i10;
    }

    public String toString() {
        BasicContentHandlerFactory.HANDLER_TYPE handler_type = this.type;
        int i10 = this.writeLimit;
        int i11 = this.maxEmbeddedResources;
        boolean z10 = this.throwOnWriteLimitReached;
        PARSE_MODE parse_mode = this.parseMode;
        return "HandlerConfig{type=" + handler_type + ", writeLimit=" + i10 + ", maxEmbeddedResources=" + i11 + ", throwOnWriteLimitReached=" + z10 + ", parseMode=" + parse_mode + "}";
    }

    public void setParseMode(String str) {
        this.parseMode = PARSE_MODE.parseMode(str);
    }

    public void setType(String str) {
        setType(BasicContentHandlerFactory.HANDLER_TYPE.valueOf(str));
    }

    public HandlerConfig(BasicContentHandlerFactory.HANDLER_TYPE handler_type, PARSE_MODE parse_mode, int i10, int i11, boolean z10) {
        this.type = BasicContentHandlerFactory.HANDLER_TYPE.TEXT;
        this.writeLimit = -1;
        this.maxEmbeddedResources = -1;
        this.throwOnWriteLimitReached = true;
        PARSE_MODE parse_mode2 = PARSE_MODE.RMETA;
        this.type = handler_type;
        this.parseMode = parse_mode;
        this.writeLimit = i10;
        this.maxEmbeddedResources = i11;
        this.throwOnWriteLimitReached = z10;
    }
}
