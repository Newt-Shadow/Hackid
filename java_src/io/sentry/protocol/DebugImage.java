package io.sentry.protocol;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class DebugImage implements q1 {
    public static final String JVM = "jvm";
    public static final String PROGUARD = "proguard";
    private String arch;
    private String codeFile;
    private String codeId;
    private String debugFile;
    private String debugId;
    private String imageAddr;
    private Long imageSize;
    private String type;
    private Map<String, Object> unknown;
    private String uuid;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public DebugImage a(l2 l2Var, ILogger iLogger) {
            DebugImage debugImage = new DebugImage();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1840639000:
                        if (f02.equals("debug_file")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1443345323:
                        if (f02.equals("image_addr")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1442803611:
                        if (f02.equals("image_size")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1127437170:
                        if (f02.equals("code_file")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3002454:
                        if (f02.equals("arch")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3601339:
                        if (f02.equals(CommonUrlParts.UUID)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 547804807:
                        if (f02.equals("debug_id")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 941842605:
                        if (f02.equals("code_id")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        debugImage.debugFile = l2Var.T();
                        break;
                    case 1:
                        debugImage.imageAddr = l2Var.T();
                        break;
                    case 2:
                        debugImage.imageSize = l2Var.M();
                        break;
                    case 3:
                        debugImage.codeFile = l2Var.T();
                        break;
                    case 4:
                        debugImage.arch = l2Var.T();
                        break;
                    case 5:
                        debugImage.type = l2Var.T();
                        break;
                    case 6:
                        debugImage.uuid = l2Var.T();
                        break;
                    case 7:
                        debugImage.debugId = l2Var.T();
                        break;
                    case '\b':
                        debugImage.codeId = l2Var.T();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                        break;
                }
            }
            l2Var.r();
            debugImage.setUnknown(hashMap);
            return debugImage;
        }
    }

    public String getArch() {
        return this.arch;
    }

    public String getCodeFile() {
        return this.codeFile;
    }

    public String getCodeId() {
        return this.codeId;
    }

    public String getDebugFile() {
        return this.debugFile;
    }

    public String getDebugId() {
        return this.debugId;
    }

    public String getImageAddr() {
        return this.imageAddr;
    }

    public Long getImageSize() {
        return this.imageSize;
    }

    public String getType() {
        return this.type;
    }

    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getUuid() {
        return this.uuid;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.uuid != null) {
            m2Var.k(CommonUrlParts.UUID).c(this.uuid);
        }
        if (this.type != null) {
            m2Var.k("type").c(this.type);
        }
        if (this.debugId != null) {
            m2Var.k("debug_id").c(this.debugId);
        }
        if (this.debugFile != null) {
            m2Var.k("debug_file").c(this.debugFile);
        }
        if (this.codeId != null) {
            m2Var.k("code_id").c(this.codeId);
        }
        if (this.codeFile != null) {
            m2Var.k("code_file").c(this.codeFile);
        }
        if (this.imageAddr != null) {
            m2Var.k("image_addr").c(this.imageAddr);
        }
        if (this.imageSize != null) {
            m2Var.k("image_size").f(this.imageSize);
        }
        if (this.arch != null) {
            m2Var.k("arch").c(this.arch);
        }
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.unknown.get(str));
            }
        }
        m2Var.r();
    }

    public void setArch(String str) {
        this.arch = str;
    }

    public void setCodeFile(String str) {
        this.codeFile = str;
    }

    public void setCodeId(String str) {
        this.codeId = str;
    }

    public void setDebugFile(String str) {
        this.debugFile = str;
    }

    public void setDebugId(String str) {
        this.debugId = str;
    }

    public void setImageAddr(String str) {
        this.imageAddr = str;
    }

    public void setImageSize(Long l10) {
        this.imageSize = l10;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setImageSize(long j10) {
        this.imageSize = Long.valueOf(j10);
    }
}
