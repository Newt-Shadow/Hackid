package org.apache.tika.pipes.emitter;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2.dex */
public class EmitKey implements Serializable {
    public static EmitKey NO_EMIT = new EmitKey(null, null);
    private static final long serialVersionUID = -3861669115439125268L;
    private String emitKey;
    private String emitterName;

    public EmitKey() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EmitKey emitKey = (EmitKey) obj;
        if (!Objects.equals(this.emitterName, emitKey.emitterName)) {
            return false;
        }
        return Objects.equals(this.emitKey, emitKey.emitKey);
    }

    public String getEmitKey() {
        return this.emitKey;
    }

    public String getEmitterName() {
        return this.emitterName;
    }

    public int hashCode() {
        int i10;
        String str = this.emitterName;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.emitKey;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    public String toString() {
        String str = this.emitterName;
        String str2 = this.emitKey;
        return "EmitterKey{emitterName='" + str + "', emitterKey='" + str2 + "'}";
    }

    public EmitKey(String str, String str2) {
        this.emitterName = str;
        this.emitKey = str2;
    }
}
